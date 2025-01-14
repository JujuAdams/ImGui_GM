// All the silly stuff that's too messy for ImGui.gml
// Used by Color*4 functions, use .Color to get BGR value for GM functions
function ImGuiColor(red, green, blue, alpha=1) constructor {
	/*
		ImGuiColor(c_red);
		ImGuiColor(c_red, 0.5);
		ImGuiColor(255, 255, 255);
		ImGuiColor(128, 255, 255, 0.5);
		ImGuiColor(c_red | (128 << 24)); Alpha is most-significant byte, basically RGBA int
	*/
	a = alpha;
	if (blue != undefined) {
		r = red;
		g = green;
		b = blue;
	} else {
		r = color_get_red(red);
		g = color_get_green(red);
		b = color_get_blue(red);
		
		if (green != undefined) {
			a = green;	
		} else {
			var high = (red >> 24) & 0xFF;
			if (high > 0) {
				a = high / 0xFF;	
			}
		}
	}
	
	static Color = function() {
		return r | (g << 8) | (b << 16);
	}
	
	static Alpha = function() {
		return a;	
	}
}