// Used by Color*4 functions, use .Color to get BGR value for GM functions
function ImGuiColorClass(redOrColor, greenOrAlpha, blue=undefined, alpha=1) constructor {
	/*
		ImGuiColorClass(c_red);
		ImGuiColorClass(c_red, 0.5);
		ImGuiColorClass(255, 255, 255);
		ImGuiColorClass(128, 255, 255, 0.5);
		ImGuiColorClass(c_red | (128 << 24)); Alpha is most-significant byte, basically RGBA int
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