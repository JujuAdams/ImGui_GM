// Feather disable all

function __ImGuiGetCursor(_constant)
{
	static _array = (function()
	{
		var _array = array_create(ImGuiMouseCursor.NotAllowed + 1, cr_none);
		
		_array[ImGuiMouseCursor.None + 1] = cr_none;
		_array[ImGuiMouseCursor.Arrow + 1] = cr_default;
		_array[ImGuiMouseCursor.TextInput + 1] = cr_beam;
		_array[ImGuiMouseCursor.ResizeAll + 1] = cr_size_all;
		_array[ImGuiMouseCursor.ResizeNS + 1] = cr_size_ns;
		_array[ImGuiMouseCursor.ResizeEW + 1] = cr_size_we;
		_array[ImGuiMouseCursor.ResizeNESW + 1] = cr_size_nesw;
		_array[ImGuiMouseCursor.ResizeNWSE + 1] = cr_size_nwse;
		_array[ImGuiMouseCursor.Hand + 1] = cr_handpoint;
		_array[ImGuiMouseCursor.NotAllowed + 1] = cr_default;
		
		return _array;
	})();
	
	return _array[_constant];
}