// Feather disable all

__ImGuiSystem();

function __ImGuiSystem()
{
	static _system = undefined;
	if (_system != undefined) return _system;
	
	_system = {};
	with(_system)
	{
		__State = {
			Display: {
				Width: 0,
				Height: 0
			},
			Input: {
				Mouse: {
					X: 0,
					Y: 0
				}
			},
			Engine: {
				Time: 0,
				Framerate: game_get_speed(gamespeed_fps)
			}
		};
		
		__Scale = 1;
		__Font = -1;
		__VtxFormat = undefined;
		__Uniform = undefined;
		__Surface = -1;
		
		__CmdBuffer = -1;
		__FontBuffer = -1;
		__VtxBuffer = -1;
		
		__CursorPrev = -1;
		__InputRequested = false;
		__InputStore = undefined;
		
		__Context = __imgui_create_context();
		__Initialized = false;
		
		if (__imgui_initialize(window_handle(), __Context, IMGUIGM_BUFFER_SIZE) == pointer_null) {
			show_error("Something failed to initialize with ImGui_GM!", true);
			return;
		}
		
		__CmdBuffer = __imguigm_command_buffer();
		__FontBuffer = __imguigm_font_buffer();
		__VtxBuffer = vertex_create_buffer();
		__Uniform = shader_get_uniform(__shdImGui, "u_ClipRect");
				
		vertex_format_begin();
		vertex_format_add_position();
		vertex_format_add_texcoord();
		vertex_format_add_color();
		__VtxFormat = vertex_format_end();
	
		time_source_start(time_source_create(time_source_global, 1, time_source_units_frames, function()
		{
			var _width = window_get_width(), _height = window_get_height();
			__State.Display.Width = _width;
			__State.Display.Height = _height;
		
			if (!surface_exists(__Surface)) {
				__Surface = surface_create(max(1, _width), max(1, _height));	
			}
		
			__State.Engine.Time = delta_time / 1000000;
			__State.Engine.Framerate = game_get_speed(gamespeed_fps);
		
			if ((_width > 0 && _height > 0) && window_has_focus()) {
				for(var i = ImGuiKey.NamedKey_BEGIN; i < ImGuiKey.NamedKey_END; i++) {
					var key = __ImGuiGetMapping(i);
					if (key > -1) __imgui_key(i, keyboard_check_direct(key));
				}
				__imgui_key(ImGuiKey.ImGuiMod_Ctrl, keyboard_check_direct(vk_lcontrol));
				__imgui_key(ImGuiKey.ImGuiMod_Shift, keyboard_check_direct(vk_lshift));
				__imgui_key(ImGuiKey.ImGuiMod_Alt, keyboard_check_direct(vk_lalt) || keyboard_check_direct(vk_ralt));
				if (__imgui_want_text_input(undefined)) {
					if (!__InputRequested) {
						__InputRequested = true;
						__InputStore = keyboard_string;
						keyboard_string = "";
					}
					if (__imgui_input(keyboard_string)) keyboard_string = "";	
				} else {
					if (__InputRequested) {
						keyboard_string = __InputStore;
						__InputRequested = false;
					}
				}
			
				var _x = window_get_x(), _y = window_get_y();
				if (point_in_rectangle(display_mouse_get_x(), display_mouse_get_y(), _x, _y, _x + _width, _y + _height)) {
					__State.Input.Mouse.X = window_mouse_get_x() / __Scale;
					__State.Input.Mouse.Y = window_mouse_get_y() / __Scale;
				
					for(var i = 0; i < 3; i++) __imgui_mouse(i, device_mouse_check_button(0, i + 1));
					if (mouse_wheel_up()) __imgui_mouse_wheel(0, 1);
					else if (mouse_wheel_down()) __imgui_mouse_wheel(0, -1);
					var _cursor = __imgui_mouse_cursor();
					if (_cursor != __CursorPrev) {
						window_set_cursor(__ImGuiGetCursor(_cursor + 1));
						__CursorPrev = _cursor;
					}
				}
			}
		
			__imgui_update(__State);
			if (buffer_peek(__FontBuffer, 0, buffer_bool)) {
				if (sprite_exists(__Font)) sprite_delete(__Font);
				var font = surface_create(buffer_peek(__FontBuffer, 1, buffer_u32), buffer_peek(__FontBuffer, 5, buffer_u32));
				buffer_set_surface(__FontBuffer, font, 9);
				__Font = sprite_create_from_surface(font, 0, 0, surface_get_width(font), surface_get_height(font), false, false, 0, 0);
				surface_free(font);
			}
		},
		[], -1));
	}
	
	return _system;
};