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
    				var key = global.__IMGUI_MAPPING[i];
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
    					window_set_cursor(global.__IMGUI_CURSOR[_cursor + 1]);
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

global.__IMGUI_MAPPING = array_create(ImGuiKey.KeysData_SIZE, -1);
global.__IMGUI_MAPPING[ImGuiKey.None] = vk_nokey;
global.__IMGUI_MAPPING[ImGuiKey.Enter] = vk_enter;
global.__IMGUI_MAPPING[ImGuiKey.Escape] = vk_escape;
global.__IMGUI_MAPPING[ImGuiKey.Space] = vk_space;
global.__IMGUI_MAPPING[ImGuiKey.Backspace] = vk_backspace;
global.__IMGUI_MAPPING[ImGuiKey.Tab] = vk_tab;
global.__IMGUI_MAPPING[ImGuiKey.Pause] = vk_pause;
global.__IMGUI_MAPPING[ImGuiKey.LeftArrow] = vk_left;
global.__IMGUI_MAPPING[ImGuiKey.RightArrow] = vk_right;
global.__IMGUI_MAPPING[ImGuiKey.UpArrow] = vk_up;
global.__IMGUI_MAPPING[ImGuiKey.DownArrow] = vk_down;
global.__IMGUI_MAPPING[ImGuiKey.Home] = vk_home;
global.__IMGUI_MAPPING[ImGuiKey.End] = vk_end;
global.__IMGUI_MAPPING[ImGuiKey.Delete] = vk_delete;
global.__IMGUI_MAPPING[ImGuiKey.Insert] = vk_insert;
global.__IMGUI_MAPPING[ImGuiKey.PageUp] = vk_pageup;
global.__IMGUI_MAPPING[ImGuiKey.PageDown] = vk_pagedown;
global.__IMGUI_MAPPING[ImGuiKey.F1] = vk_f1;
global.__IMGUI_MAPPING[ImGuiKey.F2] = vk_f2;
global.__IMGUI_MAPPING[ImGuiKey.F3] = vk_f3;
global.__IMGUI_MAPPING[ImGuiKey.F4] = vk_f4;
global.__IMGUI_MAPPING[ImGuiKey.F5] = vk_f5;
global.__IMGUI_MAPPING[ImGuiKey.F6] = vk_f6;
global.__IMGUI_MAPPING[ImGuiKey.F7] = vk_f7;
global.__IMGUI_MAPPING[ImGuiKey.F8] = vk_f8;
global.__IMGUI_MAPPING[ImGuiKey.F9] = vk_f9;
global.__IMGUI_MAPPING[ImGuiKey.F10] = vk_f10;
global.__IMGUI_MAPPING[ImGuiKey.F11] = vk_f11;
global.__IMGUI_MAPPING[ImGuiKey.F12] = vk_f12;
global.__IMGUI_MAPPING[ImGuiKey.Keypad0] = vk_numpad0;
global.__IMGUI_MAPPING[ImGuiKey.Keypad1] = vk_numpad1;
global.__IMGUI_MAPPING[ImGuiKey.Keypad2] = vk_numpad2;
global.__IMGUI_MAPPING[ImGuiKey.Keypad3] = vk_numpad3;
global.__IMGUI_MAPPING[ImGuiKey.Keypad4] = vk_numpad4;
global.__IMGUI_MAPPING[ImGuiKey.Keypad5] = vk_numpad5;
global.__IMGUI_MAPPING[ImGuiKey.Keypad6] = vk_numpad6;
global.__IMGUI_MAPPING[ImGuiKey.Keypad7] = vk_numpad7;
global.__IMGUI_MAPPING[ImGuiKey.Keypad8] = vk_numpad8;
global.__IMGUI_MAPPING[ImGuiKey.Keypad9] = vk_numpad9;
global.__IMGUI_MAPPING[ImGuiKey.KeypadDivide] = vk_divide;
global.__IMGUI_MAPPING[ImGuiKey.KeypadMultiply] = vk_multiply;
global.__IMGUI_MAPPING[ImGuiKey.KeypadSubtract] = vk_subtract;
global.__IMGUI_MAPPING[ImGuiKey.KeypadAdd] = vk_add;
global.__IMGUI_MAPPING[ImGuiKey.KeypadDecimal] = vk_decimal;
global.__IMGUI_MAPPING[ImGuiKey.LeftShift] = vk_lshift;
global.__IMGUI_MAPPING[ImGuiKey.LeftCtrl] = vk_lcontrol;
global.__IMGUI_MAPPING[ImGuiKey.LeftAlt] = vk_lalt;
global.__IMGUI_MAPPING[ImGuiKey.RightShift] = vk_rshift;
global.__IMGUI_MAPPING[ImGuiKey.RightCtrl] = vk_rcontrol;
global.__IMGUI_MAPPING[ImGuiKey.RightAlt] = vk_ralt;
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_1] = ord("1");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_2] = ord("2");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_3] = ord("3");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_4] = ord("4");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_5] = ord("5");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_6] = ord("6");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_7] = ord("7");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_8] = ord("8");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_9] = ord("9");
global.__IMGUI_MAPPING[ImGuiKey.ImGuiKey_0] = ord("0");
global.__IMGUI_MAPPING[ImGuiKey.A] = ord("A");
global.__IMGUI_MAPPING[ImGuiKey.B] = ord("B");
global.__IMGUI_MAPPING[ImGuiKey.C] = ord("C");
global.__IMGUI_MAPPING[ImGuiKey.D] = ord("D");
global.__IMGUI_MAPPING[ImGuiKey.E] = ord("E");
global.__IMGUI_MAPPING[ImGuiKey.F] = ord("F");
global.__IMGUI_MAPPING[ImGuiKey.G] = ord("G");
global.__IMGUI_MAPPING[ImGuiKey.H] = ord("H");
global.__IMGUI_MAPPING[ImGuiKey.I] = ord("I");
global.__IMGUI_MAPPING[ImGuiKey.J] = ord("J");
global.__IMGUI_MAPPING[ImGuiKey.K] = ord("K");
global.__IMGUI_MAPPING[ImGuiKey.L] = ord("L");
global.__IMGUI_MAPPING[ImGuiKey.M] = ord("M");
global.__IMGUI_MAPPING[ImGuiKey.N] = ord("N");
global.__IMGUI_MAPPING[ImGuiKey.O] = ord("O");
global.__IMGUI_MAPPING[ImGuiKey.P] = ord("P");
global.__IMGUI_MAPPING[ImGuiKey.Q] = ord("Q");
global.__IMGUI_MAPPING[ImGuiKey.R] = ord("R");
global.__IMGUI_MAPPING[ImGuiKey.S] = ord("S");
global.__IMGUI_MAPPING[ImGuiKey.T] = ord("T");
global.__IMGUI_MAPPING[ImGuiKey.U] = ord("U");
global.__IMGUI_MAPPING[ImGuiKey.V] = ord("V");
global.__IMGUI_MAPPING[ImGuiKey.W] = ord("W");
global.__IMGUI_MAPPING[ImGuiKey.X] = ord("X");
global.__IMGUI_MAPPING[ImGuiKey.Y] = ord("Y");
global.__IMGUI_MAPPING[ImGuiKey.Z] = ord("Z");
global.__IMGUI_CURSOR = array_create(ImGuiMouseCursor.NotAllowed + 1, cr_none);
global.__IMGUI_CURSOR[ImGuiMouseCursor.None + 1] = cr_none;
global.__IMGUI_CURSOR[ImGuiMouseCursor.Arrow + 1] = cr_default;
global.__IMGUI_CURSOR[ImGuiMouseCursor.TextInput + 1] = cr_beam;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
global.__IMGUI_CURSOR[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
global.__IMGUI_CURSOR[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
global.__IMGUI_CURSOR[ImGuiMouseCursor.NotAllowed + 1] = cr_default;