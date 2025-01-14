// Memory Usage
if (tick++ % game_get_speed(gamespeed_fps) == 0) {
	var memory_new = debug_event("DumpMemory", true).totalUsed;
	memory_difference = memory_new - memory;
	memory = memory_new;
}

/// Docking
if (enable_docking) ImGuiDockSpaceOverViewport();

// Setup
if (!surface_exists(surf)) {
	surf = surface_create(128, 128);
	surface_set_target(surf);
	draw_clear_alpha(c_lime, 0.25);
	surface_reset_target();
}

// Menu
var exit_modal = false;
ImGuiBeginMainMenuBar();
if (ImGuiBeginMenu("File")) {
	if (ImGuiMenuItem("Enable Viewport", undefined, enable_docking)) {
		enable_docking = !enable_docking;
	}
	
	ImGuiSeparator();
	
	if (ImGuiMenuItem("Exit")) {
		exit_modal = true;
	}
	ImGuiEndMenu();
}

if (exit_modal) ImGuiOpenPopup("Exit?");

ImGuiSetNextWindowPos(window_get_width() / 2, window_get_height () / 2, ImGuiCond.Appearing, 0.5, 0.5);
if (ImGuiBeginPopupModal("Exit?", undefined, ImGuiWindowFlags.NoResize)) {
	ImGuiText("Are you sure you want to exit?");
	ImGuiSeparator();
	if (ImGuiButton("Yes")) game_end();
	ImGuiSameLine();
	if (ImGuiButton("Nevermind")) ImGuiCloseCurrentPopup();
	ImGuiEndPopup();	
	
}

if (ImGuiBeginMenu("Windows")) {
	if (ImGuiMenuItem("Show Example Window", undefined, undefined, !main_open)) main_open = true;	
	if (ImGuiMenuItem("Show Demo Window", undefined, undefined, !demo_open)) demo_open = true;	
	ImGuiEndMenu();
}
ImGuiEndMainMenuBar();

// Adapted from https://gist.github.com/AidanSun05/953f1048ffe5699800d2c92b88c36d9f
if (!init) {
	var node_id = ImGuiGetID("Primary");
	ImGuiDockBuilderRemoveNode(node_id);
	ImGuiDockBuilderAddNode(node_id);
	var width = window_get_width() / 1.5, height = window_get_height() / 1.5;
	ImGuiDockBuilderSetNodePos(node_id, (window_get_width() / 2) - (width / 2), (window_get_height() / 2) - (height / 2));
	ImGuiDockBuilderSetNodeSize(node_id, width, height);
	
	/*
		ImGuiDockBuilderSplitNode creates 3 nodes, one for the parent that contains two children
		0th value is the parent node ID
		1st value is the node that was made in the direction of the split (ie: ImGuiDir.Left would yield the left node here)
		2nd value is the node that was made in the opposing direction of the split (ie: ImGuiDir.Left would yield the right node here)
	*/
	var dock1 = ImGuiDockBuilderSplitNode(node_id, ImGuiDir.Left, 0.5);
	node_id = dock1[2];
	dock1 = dock1[0];
	
	var dock2 = ImGuiDockBuilderSplitNode(node_id, ImGuiDir.Right, 0.25);
	node_id = dock2[2];
	dock2 = dock2[0];
	
	var dock3 = ImGuiDockBuilderSplitNode(dock2, ImGuiDir.Down, 0.5);
	dock2 = dock3[2];
	dock3 = dock3[0];
	
	ImGuiDockBuilderDockWindow("ImGui_GM Example", dock1);
	ImGuiDockBuilderDockWindow("Two", dock2);
	ImGuiDockBuilderDockWindow("Three", dock3);
	ImGuiDockBuilderFinish(node_id);
	init = true;	
}

ImGuiBegin("Two");
ImGuiText("These windows are docked inside of a dockspace via the DockBuilder API");
ImGuiEnd();
ImGuiBegin("Three");
ImGuiTextColored("You can choose to include specific windows inside of split dock nodes!", c_yellow);
ImGuiEnd();

// Main Window
if (main_open) {
	ImGuiSetNextWindowSize(room_width / 2, room_height / 2, ImGuiCond.Once);
	
	var ret = ImGuiBegin("ImGui_GM Example", main_open, ImGuiWindowFlags.None, ImGuiReturnMask.Both);
	main_open = ret & ImGuiReturnMask.Pointer;
	
	if (ret & ImGuiReturnMask.Return) {
		var width = ImGuiGetContentRegionAvailX(), height = 256;
		
		ImGuiBeginChild("Inner_Internal", width, height / 2, true);
			ImGuiText("Internal");
			ImGuiSeparator();
			var _str = "ImGui_GM v" + IMGUI_GM_VERSION;
			for(var i = 0, _i = string_length(_str); i < _i; i++) {
				var _c = make_color_hsv(255 * (i / _i), 128, 255);
				ImGuiTextColored(string_char_at(_str, i + 1), _c);
				if (i < _i - 1) ImGuiSameLine();
			}
			ImGuiTextColored("Developed by Nommiin!", c_aqua);
			ImGuiSeparator();
			if (!is_undefined(_static)) {
				_static.__Scale = max(0.5, ImGuiInputDouble("ImGui__Scale", _static.__Scale, 0.1, 0.25));
			} else {
				ImGuiBeginDisabled();
				ImGuiInputDouble("ImGui__Scale", 1);
				ImGuiEndDisabled();
				ImGuiTextColored("(!)", c_white, 0.5);
				if (ImGuiIsItemHovered()) {
					ImGuiSetTooltip("Your GameMaker runtime version (" + GM_runtime_version + ") does not support static_get\nPlease update to a newer runtime if possible!");
				}
			}
			
			if (ImGuiSmallButton("Restart")) {
				game_restart();	
			}
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Text", width / 2, height, true);
			ImGuiText("Text");
			ImGuiSeparator();
			ImGuiTextUnformatted("ImGui::TextUnformatted");
			ImGuiText("ImGui::Text");
			ImGuiTextColored("ImGui::TextColored", col);
			ImGuiTextWrapped("ImGui::TextWrapped - " + string_repeat("A", 24));
			ImGuiTextDisabled("ImGui::TextDisabled");
			ImGuiLabelText("A Label", "ImGui::LabelText");
			ImGuiBulletText("ImGui::BulletText");
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_Buttons", width / 2, height, true);
			ImGuiText("Buttons");
			ImGuiSeparator();
			if (ImGuiButton("ImGui::Button")) show_message_async("nice, you pressed the button");
			if (ImGuiSmallButton("ImGui::SmallButton")) show_message_async("nice, you pressed the smaller button");
			if (ImGuiInvisibleButton("ImGui::InvisibleButton", ImGuiGetContentRegionAvailX(), 24)) show_message_async("nice, you pressed the super secret invisible button");
			if (ImGuiArrowButton("ImGui::ArrowButton", dir)) dir = (dir + 1) % 4;
			ImGuiSameLine();
			ImGuiText("Direction: " + string(dir));
			ImGuiColorButton("ImGui::ColorButton", c_orange, 0.5);
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Textured", width / 2, height, true);
			ImGuiText("Textured Widgets");
			ImGuiSeparator();
			ImGuiText("ImGui::Image");
			ImGuiImage(sprExample, 0, col2);
			if (ImGuiIsItemHovered()) {
				ImGuiBeginTooltip();
				ImGuiText("Artwork by @Snoozercreation on Twitter!");
				ImGuiEndTooltip();
			}
			
			ImGuiText("ImGui::ImageButton");
			if (ImGuiImageButton("img_btn", sprExample, 0, c_white, 1, col4.Color(), col4.Alpha())) {
				show_message_async("nice, you clicked the red panda button :O");
			}
			
			ImGuiText("ImGui::Surface");
			surface_set_target(surf);
			var xx = ImGuiGetCursorScreenPosX(), yy = ImGuiGetCursorScreenPosY();
			var c = make_colour_hsv(255 * ((current_time % 1000) / 1000), 128, 255);
			draw_circle_color(window_mouse_get_x() - xx, window_mouse_get_y() - yy, 4, c, c, false);
			surface_reset_target();
			ImGuiSurface(surf);
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_Tree", width / 2, height, true);
			ImGuiText("Tree");
			ImGuiSeparator();
			if (ImGuiTreeNode("ImGui::TreeNode")) {
				ImGuiText("Hello!\nThis is some content inside of a tree node :)");
				ImGuiTreePop();
			}
		
			if (ImGuiTreeNode("Another Node")) {
				ImGuiText("This is another tree node, for the sake of example!");
				ImGuiImage(sprExample, 0, c_red, 1, sprite_get_width(sprExample) / 2, sprite_get_height(sprExample) / 2);
				ImGuiTreePop();
			}
		
			var ret = ImGuiCollapsingHeader("ImGui::CollapsingHeader", header_visible, undefined, ImGuiReturnMask.Both);
			header_visible = ret & ImGuiReturnMask.Pointer;
			if (ret & ImGuiReturnMask.Return) {
				ImGuiTextColored("hewwo", c_aqua, 0.5);
				ImGuiText("You can click the X icon at the side of the header to hide it!");
			}
		
			if (!header_visible) {
				if (ImGuiButton("Restore Header")) {
					header_visible = true;		
				}
			}
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Inputs", width / 2, height, true);
			ImGuiText("Inputs");
			ImGuiSeparator();
		
			input_val = ImGuiInputText("ImGui::InputText", input_val);
			input_val_ml = ImGuiInputTextMultiline("ImGui::InputTextMultiline", input_val_ml);
			input_hint = ImGuiInputTextWithHint("ImGui::InputTextWithHint", "This input has a hint value! It disappears whenever you enter something", input_hint);
		
			input_int = ImGuiInputInt("ImGui::InputInt", input_int, 1, 5);
			input_float = ImGuiInputFloat("ImGui::InputFloat", input_float, 0.1, 0.5);
			ImGuiEndChild();
		
			ImGuiSameLine();
		
			ImGuiBeginChild("Inner_Colors", 0, height, true);
			ImGuiText("Colors");
			ImGuiSeparator();
		
			col3 = ImGuiColorPicker3("ImGui::ColorPicker3", col3);
			ImGuiSeparator();
			ImGuiColorPicker4("ImGui::ColorPicker4", col4);
			ImGuiSeparator();
			col5 = ImGuiColorEdit3("ImGui::ColorEdit3", col5);
			ImGuiSeparator();
			ImGuiColorEdit4("ImGui::ColorEdit4", col6);
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_Table", width / 2, height, true);
			ImGuiText("Tables");
			ImGuiSeparator();
			if (ImGuiBeginTable("table_test", 3)) {
				ImGuiTableSetupColumn("One");
				ImGuiTableSetupColumn("Two");
				ImGuiTableSetupColumn("Three");
				ImGuiTableHeadersRow();
				
				for(var i = 0; i < 5; i++) {
					ImGuiTableNextRow();
					for(var j = 0; j < 3; j++) {
						ImGuiTableSetColumnIndex(j);
						ImGuiTableSetBgColor(ImGuiTableBgTarget.CellBg, make_color_hsv(255 * ((i + j) / 8), 128, 255), j);
						ImGuiText("Hello " + string(i + j));
					}
				}
				
				ImGuiEndTable();	
			}
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Tabs", width / 2, height, true);
			ImGuiText("Tabs");
			ImGuiSeparator();
			if (ImGuiBeginTabBar("MyTabBar"))
			{
				var ret = ImGuiBeginTabItem("Closable", tab1, undefined, ImGuiReturnMask.Both);
				tab1 = ret & ImGuiReturnMask.Pointer;
				if (ret & ImGuiReturnMask.Return) {
					ImGuiText("This is a closable tab!\nblah blah blah blah blah");
					ImGuiEndTabItem();
				}
				
				if (ImGuiBeginTabItem("Avocado"))
				{
					ImGuiText("This is the Avocado tab!\nblah blah blah blah blah");
					ImGuiEndTabItem();
				}
				if (ImGuiBeginTabItem("Broccoli"))
				{
					ImGuiText("This is the Broccoli tab!\nblah blah blah blah blah");
					ImGuiEndTabItem();
				}
				if (ImGuiBeginTabItem("Cucumber"))
				{
					ImGuiText("This is the Cucumber tab!\nblah blah blah blah blah");
					ImGuiEndTabItem();
				}
				ImGuiEndTabBar();
			}
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_Plots", width / 2, height, true);
			ImGuiText("Plots");
			ImGuiSeparator();
			ImGuiPlotLines("Line Plot", plot_val);
			ImGuiPlotHistogram("Histogram Plot", plot_val2, 0, "Overlay Here!", undefined, undefined, undefined, 128);
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Dock", width / 2, height, true);
			ImGuiText("Dock Space");
			ImGuiSeparator();
			var space_id = ImGuiGetID("DockSpace");
			ImGuiText("You can drag any window into the space below to dock it!");
			ImGuiDockSpace(space_id);
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_DragDrop", width / 2, height, true);
			ImGuiText("Drag and Drop");
			ImGuiSeparator();
			if (ImGuiRadioButton("Copy", drag_mode == 0)) {drag_mode = 0;} ImGuiSameLine();
			if (ImGuiRadioButton("Move", drag_mode == 1)) {drag_mode = 1;} ImGuiSameLine();
			if (ImGuiRadioButton("Swap", drag_mode == 2)) {drag_mode = 2;}
			
			for(var i = 0; i < array_length(drag_names); i++) {
				ImGuiPushID(i);
				if (i % 3 != 0) {
					ImGuiSameLine();	
				}
				
				ImGuiButton(drag_names[i], 60, 60);
				if (ImGuiBeginDragDropSource()) {
					ImGuiSetDragDropPayload("DND_DEMO_CELL", i);
					
					var verb = "Copy";
					switch (drag_mode) {
						case 1: verb = "Move"; break;
						case 2: verb = "Swap"; break;
					}
					ImGuiText(verb + " " + string(drag_names[i]));
					ImGuiEndDragDropSource();	
				}
				
				if (ImGuiBeginDragDropTarget()) {
					var payload = ImGuiAcceptDragDropPayload("DND_DEMO_CELL");
					if (payload != undefined) {
						switch (drag_mode) {
							// Copy
							case 0: {
								drag_names[i] = drag_names[payload];
								break;
							}
							
							// Move
							case 1: {
								drag_names[i] = drag_names[payload];
								drag_names[payload] = "";
								break;
							}
							
							// Swap
							case 2: {
								var temp = drag_names[i];
								drag_names[i] = drag_names[payload];
								drag_names[payload] = temp;
								break;	
							}
						}	
					}
					ImGuiEndDragDropTarget();	
				}
				ImGuiPopID();
			}
		ImGuiEndChild();
		
		ImGuiBeginChild("Inner_Fonts", width / 2, height, true);
			ImGuiText("Fonts");
			ImGuiSeparator();
			ImGuiText("You can load TTF/OTF font files from disk!");
			ImGuiPushFont(font_roboto);
			ImGuiTextColored("And use them wherever!", c_aqua);
			ImGuiText("Pretty neat, right?!");
			ImGuiPopFont();
			ImGuiText("And back to the default font ^_^");
		ImGuiEndChild();
		
		ImGuiSameLine();
		
		ImGuiBeginChild("Inner_DrawLists", width / 2, height, true);
			ImGuiText("Drawlists");
			ImGuiSeparator();
			var list = ImGuiGetWindowDrawList(), xx = ImGuiGetCursorScreenPosX(), yy = ImGuiGetCursorScreenPosY();
			ImGuiDrawListAddText(list, xx + (width / 4), yy + 4, "Hello from DrawListAddText!", col2);
			ImGuiDrawListAddCircleFilled(list, xx + 52, yy + 32, 12, c_blue);
			ImGuiDrawListAddBezierCubic(list, xx + 4, yy + 4, xx + (width / 4), yy + 24, xx + (width / 4) + 32, yy + 48, xx + (width / 4) + 24, yy + 64, c_purple, 3);
			var ix = xx + 24, iy = yy + (height / 3), iw = sprite_get_width(sprExample2), ih = sprite_get_height(sprExample2);
			ImGuiDrawListAddImageRounded(list, sprExample2, current_time / 100, ix - (iw / 2), iy - (ih / 2), ix + (iw / 2), iy + (ih / 2), c_white, 32, ImDrawFlags.None);
			ImGuiDrawListAddNgonFilled(list, xx + (width / 4), yy + (height / 2), 64, c_aqua, 5);
		ImGuiEndChild();
	}
	ImGuiEnd();
}

if (demo_open) {
	demo_open = ImGuiShowDemoWindow(demo_open);	
}