// Feather disable all

function __ImGuiGetMapping(_constant)
{
    static _array = (function()
    {
        var _array = array_create(ImGuiKey.KeysData_SIZE, -1);
        
        _array[ImGuiKey.None] = vk_nokey;
        _array[ImGuiKey.Enter] = vk_enter;
        _array[ImGuiKey.Escape] = vk_escape;
        _array[ImGuiKey.Space] = vk_space;
        _array[ImGuiKey.Backspace] = vk_backspace;
        _array[ImGuiKey.Tab] = vk_tab;
        _array[ImGuiKey.Pause] = vk_pause;
        _array[ImGuiKey.LeftArrow] = vk_left;
        _array[ImGuiKey.RightArrow] = vk_right;
        _array[ImGuiKey.UpArrow] = vk_up;
        _array[ImGuiKey.DownArrow] = vk_down;
        _array[ImGuiKey.Home] = vk_home;
        _array[ImGuiKey.End] = vk_end;
        _array[ImGuiKey.Delete] = vk_delete;
        _array[ImGuiKey.Insert] = vk_insert;
        _array[ImGuiKey.PageUp] = vk_pageup;
        _array[ImGuiKey.PageDown] = vk_pagedown;
        _array[ImGuiKey.F1] = vk_f1;
        _array[ImGuiKey.F2] = vk_f2;
        _array[ImGuiKey.F3] = vk_f3;
        _array[ImGuiKey.F4] = vk_f4;
        _array[ImGuiKey.F5] = vk_f5;
        _array[ImGuiKey.F6] = vk_f6;
        _array[ImGuiKey.F7] = vk_f7;
        _array[ImGuiKey.F8] = vk_f8;
        _array[ImGuiKey.F9] = vk_f9;
        _array[ImGuiKey.F10] = vk_f10;
        _array[ImGuiKey.F11] = vk_f11;
        _array[ImGuiKey.F12] = vk_f12;
        _array[ImGuiKey.Keypad0] = vk_numpad0;
        _array[ImGuiKey.Keypad1] = vk_numpad1;
        _array[ImGuiKey.Keypad2] = vk_numpad2;
        _array[ImGuiKey.Keypad3] = vk_numpad3;
        _array[ImGuiKey.Keypad4] = vk_numpad4;
        _array[ImGuiKey.Keypad5] = vk_numpad5;
        _array[ImGuiKey.Keypad6] = vk_numpad6;
        _array[ImGuiKey.Keypad7] = vk_numpad7;
        _array[ImGuiKey.Keypad8] = vk_numpad8;
        _array[ImGuiKey.Keypad9] = vk_numpad9;
        _array[ImGuiKey.KeypadDivide] = vk_divide;
        _array[ImGuiKey.KeypadMultiply] = vk_multiply;
        _array[ImGuiKey.KeypadSubtract] = vk_subtract;
        _array[ImGuiKey.KeypadAdd] = vk_add;
        _array[ImGuiKey.KeypadDecimal] = vk_decimal;
        _array[ImGuiKey.LeftShift] = vk_lshift;
        _array[ImGuiKey.LeftCtrl] = vk_lcontrol;
        _array[ImGuiKey.LeftAlt] = vk_lalt;
        _array[ImGuiKey.RightShift] = vk_rshift;
        _array[ImGuiKey.RightCtrl] = vk_rcontrol;
        _array[ImGuiKey.RightAlt] = vk_ralt;
        _array[ImGuiKey.ImGuiKey_1] = ord("1");
        _array[ImGuiKey.ImGuiKey_2] = ord("2");
        _array[ImGuiKey.ImGuiKey_3] = ord("3");
        _array[ImGuiKey.ImGuiKey_4] = ord("4");
        _array[ImGuiKey.ImGuiKey_5] = ord("5");
        _array[ImGuiKey.ImGuiKey_6] = ord("6");
        _array[ImGuiKey.ImGuiKey_7] = ord("7");
        _array[ImGuiKey.ImGuiKey_8] = ord("8");
        _array[ImGuiKey.ImGuiKey_9] = ord("9");
        _array[ImGuiKey.ImGuiKey_0] = ord("0");
        _array[ImGuiKey.A] = ord("A");
        _array[ImGuiKey.B] = ord("B");
        _array[ImGuiKey.C] = ord("C");
        _array[ImGuiKey.D] = ord("D");
        _array[ImGuiKey.E] = ord("E");
        _array[ImGuiKey.F] = ord("F");
        _array[ImGuiKey.G] = ord("G");
        _array[ImGuiKey.H] = ord("H");
        _array[ImGuiKey.I] = ord("I");
        _array[ImGuiKey.J] = ord("J");
        _array[ImGuiKey.K] = ord("K");
        _array[ImGuiKey.L] = ord("L");
        _array[ImGuiKey.M] = ord("M");
        _array[ImGuiKey.N] = ord("N");
        _array[ImGuiKey.O] = ord("O");
        _array[ImGuiKey.P] = ord("P");
        _array[ImGuiKey.Q] = ord("Q");
        _array[ImGuiKey.R] = ord("R");
        _array[ImGuiKey.S] = ord("S");
        _array[ImGuiKey.T] = ord("T");
        _array[ImGuiKey.U] = ord("U");
        _array[ImGuiKey.V] = ord("V");
        _array[ImGuiKey.W] = ord("W");
        _array[ImGuiKey.X] = ord("X");
        _array[ImGuiKey.Y] = ord("Y");
        _array[ImGuiKey.Z] = ord("Z");
        
        return _array;
    })();
    
    return _array[_constant];
}