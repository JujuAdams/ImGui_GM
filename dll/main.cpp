#include <tchar.h>
#include <stdlib.h>
#include <string>
#include <charconv>
#include "imgui/imgui.h"
#include "imgui_gm.h"

static bool g_ImGuiInitialized = false;

char g_InputBuf[INPUT_SIZE];
RValue g_Copy;

ID3D11Device* g_pd3dDevice;
ID3D11DeviceContext* g_pd3dDeviceContext;
ID3D11ShaderResourceView* g_pView;

ImGuiExtFlags g_ImGuiExtFlags;
int g_KeepAlive;

YYRunnerInterface gs_runnerInterface;
YYRunnerInterface* g_pYYRunnerInterface;

GMEXPORT void YYExtensionInitialise(const struct YYRunnerInterface* _pFunctions, size_t _functions_size) {
	if (_functions_size < sizeof(YYRunnerInterface)) {
		memcpy(&gs_runnerInterface, _pFunctions, _functions_size);
	} else {
		memcpy(&gs_runnerInterface, _pFunctions, sizeof(YYRunnerInterface));
	}
	g_pYYRunnerInterface = &gs_runnerInterface;

	WriteLog("Successfully initialized runner interface");
	return;
}

GMFUNC(__imgui_initialize) {
	HWND window_handle = (HWND)YYGetPtr(arg, 0);

	void* ctx = YYGetPtr(arg, 1);
	GMDEFAULT(undefined);
	GMHINT(ImGuiContext);

	if (ctx == nullptr) {
		ImGuiContext* ctx = ImGui::CreateContext();
		ImGui::SetCurrentContext(ctx);
	}

	ImGuiIO& io = ImGui::GetIO();

	ImGuiViewport* main_viewport = ImGui::GetMainViewport();
	main_viewport->PlatformHandle = window_handle;

	RValue* info = YYGetStruct(arg, 2);
	GMHINT(Struct)

	if (g_KeepAlive == NULL) {
		g_KeepAlive = CreateDsMap(0, 0);
	}

	RValue* rvalue;
	g_pd3dDevice = (ID3D11Device*)(YYStructGetMember(info, "D3DDevice")->ptr);
	g_pd3dDeviceContext = (ID3D11DeviceContext*)(YYStructGetMember(info, "D3DDeviceContext")->ptr);
	if (g_ImGuiExtFlags == NULL) {
		g_ImGuiExtFlags = YYStructGetMember(info, "ExtFlags")->asInt64();
	}

	ImGuiConfigFlags configFlagsPrev = io.ConfigFlags;

	ImGuiConfigFlags configFlagsOverrideSet = ImGuiConfigFlags_None;
	ImGuiConfigFlags configFlagsOverrideClear = ImGuiConfigFlags_None;
	rvalue = YYStructGetMember(info, "ConfigFlagsOverrideSet"); AssignIfDefined(rvalue, configFlagsOverrideSet, RConvertToImGuiConfigFlags);
	rvalue = YYStructGetMember(info, "ConfigFlagsOverrideClear"); AssignIfDefined(rvalue, configFlagsOverrideClear, RConvertToImGuiConfigFlags);

	IM_ASSERT((configFlagsOverrideSet & configFlagsOverrideClear) == 0 && "Overrides contain the same bits");

	io.ConfigFlags |= configFlagsOverrideSet;
	io.ConfigFlags &= ~configFlagsOverrideClear;

	io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
	
	Result.kind = VALUE_PTR;

	g_UpdateFont = true;
	io.BackendFlags |= ImGuiBackendFlags_HasMouseCursors;
	io.BackendFlags |= ImGuiBackendFlags_HasSetMousePos;
	io.BackendFlags |= ImGuiBackendFlags_PlatformHasViewports;
	io.BackendFlags |= ImGuiBackendFlags_HasMouseHoveredViewport;

	if ((g_ImGuiExtFlags & ImGuiExtFlags_RENDERER_GM)) {
		io.BackendFlags &= ~ImGuiBackendFlags_PlatformHasViewports;
		io.BackendFlags &= ~ImGuiBackendFlags_HasMouseHoveredViewport;
	}

	if (!IMGUI_CHECKVERSION()) {
		io.ConfigFlags = configFlagsPrev;
		Result.ptr = nullptr;
		return;
	}

	bool ok = true;
	if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_WIN32) { ok = ImGui_ImplWin32_Init(window_handle); };
	if (ok) { if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_DX11) { ok = ImGui_ImplDX11_Init(g_pd3dDevice, g_pd3dDeviceContext); } }
	else {
		io.ConfigFlags = configFlagsPrev;
		Result.ptr = nullptr;
		return;
	}
	if (ok) { if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_GM) { ok = ImGui_ImplGM_Init(window_handle); } }
	else {
		ImGui_ImplWin32_Shutdown();
		io.ConfigFlags = configFlagsPrev;
		Result.ptr = nullptr;
		return;
	};
	if (!ok) {
		ImGui_ImplDX11_Shutdown();
		io.ConfigFlags = configFlagsPrev;
		Result.ptr = nullptr;
		return;
	}

	g_ImGuiInitialized = true;

	Result.ptr = ctx;
	GMRETURNS(ImGuiContext);
}

GMFUNC(__imgui_update_state_from_struct) {
	RValue* state = YYGetStruct(arg, 0);
	StateUpdateFlags flags = YYGetInt64(arg, 1);

	UpdateStateFromStruct(state, flags);
}

GMFUNC(__imgui_new_frame) {
	RValue* state = YYGetStruct(arg, 0);
	if (state == nullptr) ShowError("Could not call new_frame function when state struct is null");

	if (!g_ImGuiInitialized) ShowError("Could not call new_frame function when ImGui_GM is not initialized");
	ImGuiIO& io = ImGui::GetIO();

	// Update framerate and time regardless of Impl GM.
	if (g_ImGuiExtFlags & ImGuiExtFlags_GM) {
		UpdateStateFromStruct(state, StateUpdateFlags_Framerate | StateUpdateFlags_Time);
	} else {
		UpdateStateFromStruct(state, StateUpdateFlags_Display | StateUpdateFlags_Framerate | StateUpdateFlags_Time);
	}

	if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_WIN32) ImGui_ImplWin32_NewFrame();
	if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_DX11) ImGui_ImplDX11_NewFrame();
	if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_GM) {
		UpdateStateFromStruct(state, StateUpdateFlags_All);
		ImGui_ImplGM_NewFrame();
	}

	ImGui::NewFrame();

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_end_frame) {
	if (!g_ImGuiInitialized) ShowError("Could not call end_frame function when ImGui_GM is not initialized");

	ImGuiIO& io = ImGui::GetIO();
	ImGui::EndFrame();

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_render) {
	if (!g_ImGuiInitialized) ShowError("Could not call render function when ImGui_GM is not initialized");

	ImGuiIO& io = ImGui::GetIO();
	ImGuiContext* ctx = ImGui::GetCurrentContext();

	ImGui::Render();
	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_draw) {
	RValue* state = YYGetStruct(arg, 0);

	if (state == nullptr) ShowError("Could not call draw function when state struct is null");
	if (!g_ImGuiInitialized) ShowError("Could not call draw function when ImGui_GM is not initialized");

	ImGuiIO& io = ImGui::GetIO();

	IM_ASSERT((!(g_ImGuiExtFlags & ImGuiExtFlags_RENDERER_GM) || (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_GM)) && "Did you set ImGuiExtFlags_IMPL_GM in GM renderer?");

	ImDrawData* g_ImDrawData = ImGui::GetDrawData();

	if (g_ImGuiExtFlags & (ImGuiExtFlags_IMPL_GM | ImGuiExtFlags_RENDERER_GM)) {
		UpdateStateFromStruct(state, StateUpdateFlags_Renderer);
		ImGui_ImplGM_RenderDrawData(g_ImDrawData);

	} else if (g_ImGuiExtFlags & ImGuiExtFlags_IMPL_DX11) {
		ImGui_ImplDX11_RenderDrawData(g_ImDrawData);

	} else {
		ShowError("No ImGui renderer set.");
	}

	if (io.BackendFlags & ImGuiBackendFlags_PlatformHasViewports) {
		if (io.ConfigFlags & ImGuiConfigFlags_ViewportsEnable)
		{
			ImGui::UpdatePlatformWindows();
			ImGui::RenderPlatformWindowsDefault();
		}
	}

	Result.kind = VALUE_UNDEFINED;
}

GMFUNC(__imgui_key) {
	ImGui::GetIO().AddKeyEvent((ImGuiKey)YYGetReal(arg, 0), YYGetBool(arg, 1));
}

GMFUNC(__imgui_input) {
	ImGuiIO& io = ImGui::GetIO();
	if (io.WantTextInput) io.AddInputCharactersUTF8(YYGetString(arg, 0));

	Result.kind = VALUE_BOOL;
	Result.val = io.WantTextInput;
}

GMFUNC(__imgui_mouse) {
	ImGui::GetIO().AddMouseButtonEvent(YYGetReal(arg, 0), YYGetBool(arg, 1));
}

GMFUNC(__imgui_mouse_wheel) {
	ImGui::GetIO().AddMouseWheelEvent(YYGetReal(arg, 0), YYGetReal(arg, 1));
}

GMFUNC(__imgui_mouse_cursor) {
	Result.kind = VALUE_REAL;
	Result.val = ImGui::GetMouseCursor();
}