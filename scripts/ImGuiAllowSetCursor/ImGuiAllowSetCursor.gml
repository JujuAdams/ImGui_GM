// Feather disable all

/// Toggles whether ImGui_GM should set the OS cursor. This feature defaults to `true` i.e.
/// ImGui_GM will change the OS cursor at will.
/// 
/// @param {Bool} state

function ImGuiAllowSetCursor(_state)
{
    static _system = __ImGuiSystem();
    _system.__allowSetCursor = _state;
}