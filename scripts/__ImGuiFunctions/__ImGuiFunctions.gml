/// @return {Pointer}
function ImGuiCreateContext() {
	return __imgui_create_context();
}

/// @argument {Pointer} ctx
/// @return {Undefined}
function ImGuiDestroyContext(ctx) {
	return __imgui_destroy_context(ctx);
}

/// @return {Pointer}
function ImGuiGetCurrentContext() {
	return __imgui_get_current_context();
}

/// @argument {Pointer} ctx
/// @return {Undefined}
function ImGuiSetCurrentContext(ctx) {
	return __imgui_set_current_context(ctx);
}

/// @argument {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowDemoWindow(open=undefined) {
	return __imgui_show_demo_window(open);
}

/// @argument {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowMetricsWindow(open=undefined) {
	return __imgui_show_metrics_window(open);
}

/// @argument {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowDebugLogWindow(open=undefined) {
	return __imgui_show_debug_log_window(open);
}

/// @argument {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowStackToolWindow(open=undefined) {
	return __imgui_show_stack_tool_window(open);
}

/// @argument {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowAboutWindow(open=undefined) {
	return __imgui_show_about_window(open);
}

/// @return {Undefined}
function ImGuiShowStyleEditor() {
	return __imgui_show_style_editor();
}

/// @argument {String} label
/// @return {Bool}
function ImGuiShowStyleSelector(label) {
	return __imgui_show_style_selector(label);
}

/// @argument {String} label
/// @return {Undefined}
function ImGuiShowFontSelector(label) {
	return __imgui_show_font_selector(label);
}

/// @return {Undefined}
function ImGuiShowUserGuide() {
	return __imgui_show_user_guide();
}

/// @return {String}
function ImGuiGetVersion() {
	return __imgui_get_version();
}

/// @argument {String|Real} _id
/// @return {Undefined}
function ImGuiPushID(_id) {
	return __imgui_push_id(_id);
}

/// @return {Undefined}
function ImGuiPopID() {
	return __imgui_pop_id();
}

/// @argument {String} str_id
/// @return {Real}
function ImGuiGetID(str_id) {
	return __imgui_get_id(str_id);
}

/// @argument {Bool} [disabled=true]
/// @return {Undefined}
function ImGuiBeginDisabled(disabled=true) {
	return __imgui_begin_disabled(disabled);
}

/// @return {Undefined}
function ImGuiEndDisabled() {
	return __imgui_end_disabled();
}

/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function ImGuiIsItemHovered(flags=ImGuiHoveredFlags.None) {
	return __imgui_is_item_hovered(flags);
}

/// @return {Bool}
function ImGuiIsItemActive() {
	return __imgui_is_item_active();
}

/// @return {Bool}
function ImGuiIsItemFocused() {
	return __imgui_is_item_focused();
}

/// @argument {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
/// @return {Bool}
function ImGuiIsItemClicked(mouse_button=ImGuiMouseButton.Left) {
	return __imgui_is_item_clicked(mouse_button);
}

/// @return {Bool}
function ImGuiIsItemVisible() {
	return __imgui_is_item_visible();
}

/// @return {Bool}
function ImGuiIsItemEdited() {
	return __imgui_is_item_edited();
}

/// @return {Bool}
function ImGuiIsItemActivated() {
	return __imgui_is_item_activated();
}

/// @return {Bool}
function ImGuiIsItemDeactivated() {
	return __imgui_is_item_deactivated();
}

/// @return {Bool}
function ImGuiIsItemDeactivatedAfterEdit() {
	return __imgui_is_item_deactivated_after_edit();
}

/// @return {Bool}
function ImGuiIsItemToggledOpen() {
	return __imgui_is_item_toggled_open();
}

/// @return {Bool}
function ImGuiIsAnyItemHovered() {
	return __imgui_is_any_item_hovered();
}

/// @return {Bool}
function ImGuiIsAnyItemActive() {
	return __imgui_is_any_item_active();
}

/// @return {Bool}
function ImGuiIsAnyItemFocused() {
	return __imgui_is_any_item_focused();
}

/// @return {Real}
function ImGuiGetItemID() {
	return __imgui_get_item_id();
}

/// @return {Real}
function ImGuiGetItemRectMinX() {
	return __imgui_get_item_rect_min_x();
}

/// @return {Real}
function ImGuiGetItemRectMinY() {
	return __imgui_get_item_rect_min_y();
}

/// @return {Real}
function ImGuiGetItemRectMaxX() {
	return __imgui_get_item_rect_max_x();
}

/// @return {Real}
function ImGuiGetItemRectMaxY() {
	return __imgui_get_item_rect_max_y();
}

/// @return {Real}
function ImGuiGetItemRectSizeX() {
	return __imgui_get_item_rect_size_x();
}

/// @return {Real}
function ImGuiGetItemRectSizeY() {
	return __imgui_get_item_rect_size_y();
}

/// @return {Undefined}
function ImGuiSetItemAllowOverlap() {
	return __imgui_set_item_allow_overlap();
}

/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @return {Bool}
function ImGuiIsRectVisible(x1, y1, x2, y2) {
	return __imgui_is_rect_visible(x1, y1, x2, y2);
}

/// @return {Real}
function ImGuiGetTime() {
	return __imgui_get_time();
}

/// @return {Real}
function ImGuiGetFrameCount() {
	return __imgui_get_frame_count();
}

/// @argument {String} text
/// @argument {Bool} [hide_text_after_double_hash=false]
/// @argument {Real} [wrap_width=-1]
/// @return {Real}
function ImGuiCalcTextWidth(text, hide_text_after_double_hash=false, wrap_width=-1) {
	return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
}

/// @argument {String} text
/// @argument {Bool} [hide_text_after_double_hash=false]
/// @argument {Real} [wrap_width=-1]
/// @return {Real}
function ImGuiCalcTextHeight(text, hide_text_after_double_hash=false, wrap_width=-1) {
	return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
}

/// @argument {Bool} allow_keyboard_focus
/// @return {Undefined}
function ImGuiPushAllowKeyboardFocus(allow_keyboard_focus) {
	return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
}

/// @return {Undefined}
function ImGuiPopAllowKeyboardFocus() {
	return __imgui_pop_allow_keyboard_focus();
}

/// @argument {Real} [offset=0]
/// @return {Undefined}
function ImGuiSetKeyboardFocusHere(offset=0) {
	return __imgui_set_keyboard_focus_here(offset);
}

/// @argument {Bool} _repeat
/// @return {Undefined}
function ImGuiPushButtonRepeat(_repeat) {
	return __imgui_push_button_repeat(_repeat);
}

/// @return {Undefined}
function ImGuiPopButtonRepeat() {
	return __imgui_pop_button_repeat();
}

/// @return {Undefined}
function ImGuiSetItemDefaultFocus() {
	return __imgui_set_item_default_focus();
}

/// @return {Real}
function ImGuiConfigFlagsGet() {
	return __imgui_config_flags_get();
}

/// @argument {Real} flags
/// @return {Unknown<unset>}
function ImGuiConfigFlagsSet(flags) {
	return __imgui_config_flags_set(flags);
}

/// @argument {Real} flag
/// @return {Bool}
function ImGuiConfigFlagToggle(flag) {
	return __imgui_config_flag_toggle(flag);
}

/// @return {Pointer}
function ImGuiGetMainViewport() {
	return __imgui_get_main_viewport();
}

/// @argument {String} text
/// @return {Undefined}
function ImGuiLogText(text) {
	return __imgui_log_text(text);
}

/// @argument {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantKeyboardCapture(val=undefined) {
	return __imgui_want_keyboard_capture(val);
}

/// @argument {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantMouseCapture(val=undefined) {
	return __imgui_want_mouse_capture(val);
}

/// @argument {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantTextInput(val=undefined) {
	return __imgui_want_text_input(val);
}

/// @argument {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantMouseCaptureUnlessPopupClose(val=undefined) {
	return __imgui_want_mouse_unless_popup_close(val);
}

/// @argument {String} label
/// @argument {Real} col
/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function ImGuiColorEdit3(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_edit3(label, col, flags);
}

/// @argument {String} label
/// @argument {Real} col
/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function ImGuiColorPicker3(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_picker3(label, col, flags);
}

/// @argument {String} label
/// @argument {ImGuiColor} col
/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function ImGuiColorEdit4(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_edit4(label, col, flags);
}

/// @argument {String} label
/// @argument {ImGuiColor} col
/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function ImGuiColorPicker4(label, col, flags=ImGuiColorEditFlags.None) {
	return __imgui_color_picker4(label, col, flags);
}

/// @argument {String} desc_id
/// @argument {Real} color
/// @argument {Real} [alpha=1]
/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
function ImGuiColorButton(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
	return __imgui_color_button(desc_id, color, alpha, flags, width, height);
}

/// @argument {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Undefined}
function ImGuiSetColorEditOptions(flags=ImGuiColorEditFlags.None) {
	return __imgui_set_color_edit_options(flags);
}

/// @argument {String} label
/// @argument {String} preview
/// @argument {Real} flags
/// @return {Bool}
function ImGuiBeginCombo(label, preview, flags) {
	return __imgui_begin_combo(label, preview, flags);
}

/// @return {Undefined}
function ImGuiEndCombo() {
	return __imgui_end_combo();
}

/// @return {Unknown<unset>}
function ImGuiCombo() {
	return __imgui_combo();
}

/// @argument {Real} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockSpace(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None) {
	return __imgui_dock_space(_id, width, height, flags);
}

/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockSpaceOverViewport(flags=ImGuiDockNodeFlags.None) {
	return __imgui_dock_space_over_viewport(flags);
}

/// @argument {Real} dock_id
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowDockID(dock_id, cond=ImGuiCond.None) {
	return __imgui_set_next_window_dock_id(dock_id, cond);
}

/// @return {Unknown<unset>}
function ImGuiSetNextWindowClass() {
	return __imgui_set_next_window_class();
}

/// @return {Real}
function ImGuiGetWindowDockID() {
	return __imgui_get_window_dock_id();
}

/// @return {Bool}
function ImGuiIsWindowDocked() {
	return __imgui_is_window_docked();
}

/// @argument {String} window_name
/// @argument {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderDockWindow(window_name, node_id) {
	return __imgui_dockbuilder_dock_window(window_name, node_id);
}

/// @argument {Real} node_id
/// @return {Pointer}
function ImGuiDockBuilderGetNode(node_id) {
	return __imgui_dockbuilder_get_node(node_id);
}

/// @argument {Real} node_id
/// @return {Pointer}
function ImGuiDockBuilderGetCentralNode(node_id) {
	return __imgui_dockbuilder_get_central_node(node_id);
}

/// @argument {Real} [node_id=0]
/// @argument {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockBuilderAddNode(node_id=0, flags=ImGuiDockNodeFlags.None) {
	return __imgui_dockbuilder_add_node(node_id, flags);
}

/// @argument {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderRemoveNode(node_id) {
	return __imgui_dockbuilder_remove_node(node_id);
}

/// @argument {Real} node_id
/// @argument {Bool} [clear_settings_refs=true]
/// @return {Undefined}
function ImGuiDockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs=true) {
	return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
}

/// @argument {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderRemoveNodeChildNodes(node_id) {
	return __imgui_dockbuilder_remove_node_child_nodes(node_id);
}

/// @argument {Real} node_id
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
function ImGuiDockBuilderSetNodePos(node_id, _x, _y) {
	return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
}

/// @argument {Real} node_id
/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
function ImGuiDockBuilderSetNodeSize(node_id, width, height) {
	return __imgui_dockbuilder_set_node_size(node_id, width, height);
}

/// @argument {Real} node_id
/// @argument {Real} split_dir
/// @argument {Real} size_ratio_for_node_at_dir
/// @return {Array<ImGuiID>}
function ImGuiDockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir) {
	return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
}

/// @return {Unknown<unset>}
function ImGuiDockBuilderCopyDockSpace() {
	return __imgui_dockbuilder_copy_dock_space();
}

/// @return {Unknown<unset>}
function ImGuiDockBuilderCopyDockNode() {
	return __imgui_dockbuilder_copy_node();
}

/// @argument {String} src_name
/// @argument {String} dst_name
/// @return {Undefined}
function ImGuiDockBuilderCopyWindowSettings(src_name, dst_name) {
	return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
}

/// @argument {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderFinish(node_id) {
	return __imgui_dockbuilder_finish(node_id);
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiDragFloat(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_float(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat2(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_float2(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat3(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_float3(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat4(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloatN(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format_min=%.3f]
/// @argument {String} [format_max=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloatRange2(label, v, v_speed=1, v_min=0, v_max=0, format_min="%.3f", format_max="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_float_range2(label, v, v_speed, v_min, v_max, format_min, format_max, flags);
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiDragInt(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt2(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int2(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt3(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int3(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt4(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragIntN(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_intn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} v_current_max
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format_max=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragIntRange2(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
}

/// @argument {Pointer} [viewport=undefined]
/// @return {Pointer}
function ImGuiGetBackgroundDrawList(viewport=undefined) {
	return __imgui_get_background_drawlist(viewport);
}

/// @argument {Pointer} [viewport=undefined]
/// @return {Pointer}
function ImGuiGetForegroundDrawList(viewport=undefined) {
	return __imgui_get_foreground_drawlist(viewport);
}

/// @return {Pointer}
function ImGuiGetWindowDrawList() {
	return __imgui_get_window_drawlist();
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} col
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddLine(list, x1, y1, x2, y2, col, thickness=1) {
	return __imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} col
/// @argument {Real} [rounding=0]
/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddRect(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None, thickness=1) {
	return __imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding, flags, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} col
/// @argument {Real} [rounding=0]
/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @return {Undefined}
function ImGuiDrawListAddRectFilled(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None) {
	return __imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding, flags);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} col1
/// @argument {Real} col2
/// @argument {Real} col3
/// @argument {Real} col4
/// @return {Undefined}
function ImGuiDrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4) {
	return __imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} x4
/// @argument {Real} y4
/// @argument {Real} col
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness=1) {
	return __imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} x4
/// @argument {Real} y4
/// @argument {Real} col
/// @return {Undefined}
function ImGuiDrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col) {
	return __imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} col
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, thickness=1) {
	return __imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} col
/// @return {Undefined}
function ImGuiDrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col) {
	return __imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} col
/// @argument {Real} [num_segments=0]
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddCircle(list, _x, _y, radius, col, num_segments=0, thickness=1) {
	return __imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} col
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddCircleFilled(list, _x, _y, radius, col, num_segments=0) {
	return __imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} col
/// @argument {Real} [num_segments=0]
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddNgon(list, _x, _y, radius, col, num_segments=0, thickness=1) {
	return __imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments, thickness);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} col
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddNgonFilled(list, _x, _y, radius, col, num_segments=0) {
	return __imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {String} text
/// @argument {Real} col
/// @return {Undefined}
function ImGuiDrawListAddText(list, _x, _y, text, col) {
	return __imgui_drawlist_add_text(list, _x, _y, text, col);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {String} text
/// @argument {Real} col
/// @argument {Pointer} font
/// @argument {Real} font_size
/// @argument {Real} [wrap_width=0]
/// @return {Undefined}
function ImGuiDrawListAddTextFont(list, _x, _y, text, col, font, font_size, wrap_width=0) {
	return __imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width);
}

/// @argument {Pointer} list
/// @argument {Array<Real>} positions
/// @argument {Real} col
/// @argument {Enum.ImDrawFlags} flags
/// @argument {Real} thickness
/// @return {Undefined}
function ImGuiDrawListAddPolyline(list, positions, col, flags, thickness) {
	return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
}

/// @argument {Pointer} list
/// @argument {Array<Real>} positions
/// @argument {Real} col
/// @return {Undefined}
function ImGuiDrawListAddConvexPolyFilled(list, positions, col) {
	return __imgui_drawlist_add_convex_poly_filled(list, positions, col, array_length(positions));
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} x4
/// @argument {Real} y4
/// @argument {Real} col
/// @argument {Real} thickness
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments=0) {
	return __imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} col
/// @argument {Real} thickness
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
	return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} col
/// @return {Undefined}
function ImGuiDrawListPathFillConvex(list, col) {
	return __imgui_drawlist_path_fill_convex(list, col);
}

/// @argument {Pointer} list
/// @argument {Real} col
/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @argument {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListPathStroke(list, col, flags=ImDrawFlags.None, thickness=1) {
	return __imgui_drawlist_path_stroke(list, col, flags, thickness);
}

/// @argument {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPathClear(list) {
	return __imgui_drawlist_path_clear(list);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
function ImGuiDrawListPathLineTo(list, _x, _y) {
	return __imgui_drawlist_path_line_to(list, _x, _y);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
function ImGuiDrawListPathLineToMergeDuplicate(list, _x, _y) {
	return __imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} a_min
/// @argument {Real} a_max
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments=0) {
	return __imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Real} radius
/// @argument {Real} a_min_of_12
/// @argument {Real} a_max_of_12
/// @return {Undefined}
function ImGuiDrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12) {
	return __imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12);
}

/// @argument {Pointer} list
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} x4
/// @argument {Real} y4
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments=0) {
	return __imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} x3
/// @argument {Real} y3
/// @argument {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments=0) {
	return __imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments);
}

/// @argument {Pointer} list
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} [rounding=0]
/// @argument {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @return {Undefined}
function ImGuiDrawListPathRect(list, x1, y1, x2, y2, rounding=0, flags=ImDrawFlags.None) {
	return __imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding, flags);
}

/// @argument {Pointer} list
/// @argument {Real} sprite
/// @argument {Real} subimg
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} [col=c_white]
/// @return {Undefined}
function ImGuiDrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
	return __imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col, sprite_get_uvs(sprite, subimg));
}

/// @argument {Pointer} list
/// @argument {Real} sprite
/// @argument {Real} subimg
/// @argument {Real} x1
/// @argument {Real} y1
/// @argument {Real} x2
/// @argument {Real} y2
/// @argument {Real} col
/// @argument {Real} rounding
/// @argument {Real} flags
/// @return {Undefined}
function ImGuiDrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
	return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
}

/// @argument {Pointer} list
/// @argument {Real} clip_min_x
/// @argument {Real} clip_min_y
/// @argument {Real} clip_max_x
/// @argument {Real} clip_max_y
/// @argument {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function ImGuiDrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @argument {Pointer} list
/// @return {Undefined}
function ImGuiDrawlistPushClipRectFullscreen(list) {
	return __imgui_drawlist_push_clip_rect_fullscreen(list);
}

/// @argument {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPopClipRect(list) {
	return __imgui_drawlist_pop_clip_rect(list);
}

/// @argument {Pointer} list
/// @argument {Real} sprite
/// @argument {Real} subimg
/// @return {Undefined}
function ImGuiDrawListPushTextureID(list, sprite, subimg) {
	return __imgui_drawlist_push_textureid(list, sprite, subimg);
}

/// @argument {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPopTextureID(list) {
	return __imgui_drawlist_pop_textureid(list);
}

/// @argument {Pointer} list
/// @return {Real}
function ImGuiDrawListFlagsGet(list) {
	return __imgui_drawlist_flags_get(list);
}

/// @argument {Pointer} list
/// @argument {Real} flags
/// @return {Undefined}
function ImGuiDrawListFlagsSet(list, flags) {
	return __imgui_drawlist_flags_set(list, flags);
}

/// @argument {Pointer} list
/// @argument {Real} flag
/// @return {Bool}
function ImGuiDrawListFlagToggle(list, flag) {
	return __imgui_drawlist_flag_toggle(list, flag);
}

/// @argument {String} title
/// @argument {Real} buffer
/// @argument {Real} [offset=0]
/// @argument {Real} [size=buffer_get_size???buffer???]
/// @return {Undefined}
function ImGuiMemoryEditorShowWindow(title, buffer, offset=0, size=buffer_get_size(buffer)) {
	return __imgui_memory_editor_window(title, buffer, offset, size);
}

/// @argument {Real} buffer
/// @argument {Real} [offset=0]
/// @argument {Real} [size=buffer_get_size???buffer???]
/// @return {Undefined}
function ImGuiMemoryEditorDrawContents(buffer, offset=0, size=buffer_get_size(buffer)) {
	return __imgui_memory_editor_contents(buffer, offset, size);
}

/// @return {Pointer}
function ImGuiGetFont() {
	return __imgui_get_font();
}

/// @return {Real}
function ImGuiGetFontSize() {
	return __imgui_get_font_size();
}

/// @argument {Any} [_ptr=undefined]
/// @return {Undefined}
function ImGuiPushFont(_ptr=undefined) {
	return __imgui_push_font(_ptr);
}

/// @return {Undefined}
function ImGuiPopFont() {
	return __imgui_pop_font();
}

/// @argument {String} file
/// @argument {Real} size
/// @return {Pointer|Undefined}
function ImGuiAddFontFromFile(file, size) {
	return __imgui_add_font_from_file(file, size);
}

/// @return {Unknown<unset>}
function ImGuiAddFontDefault() {
	return __imgui_add_font_default();
}

/// @argument {String} label
/// @argument {String} val
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputText(label, val, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_text(label, val, flags);
}

/// @argument {String} label
/// @argument {String} val
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputTextMultiline(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_textmultiline(label, val, width, height, flags);
}

/// @argument {String} label
/// @argument {String} hint
/// @argument {String} val
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputTextWithHint(label, hint, val, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_textwithhint(label, hint, val, flags);
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputFloat(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_float(label, v, step, step_fast, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat2(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_float2(label, v, step, step_fast, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat3(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_float3(label, v, step, step_fast, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat4(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_float4(label, v, step, step_fast, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloatN(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_floatn(label, v, step, step_fast, format, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputInt(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int(label, v, step, step_fast, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt2(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int2(label, v, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt3(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int3(label, v, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt4(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_int4(label, v, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputIntN(label, v, flags=ImGuiInputTextFlags.None) {
	return __imgui_input_intn(label, v, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [step=0]
/// @argument {Real} [step_fast=0]
/// @argument {String} [format=%.6f]
/// @argument {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputDouble(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
	return __imgui_input_double(label, v, step, step_fast, format, flags);
}

/// @return {Undefined}
function ImGuiSpacing() {
	return __imgui_spacing();
}

/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
function ImGuiDummy(width, height) {
	return __imgui_dummy(width, height);
}

/// @return {Undefined}
function ImGuiNewLine() {
	return __imgui_newline();
}

/// @return {Undefined}
function ImGuiAlignTextToFramePadding() {
	return __imgui_align_text_to_frame_padding();
}

/// @return {Undefined}
function ImGuiSeparator() {
	return __imgui_separator();
}

/// @argument {Real} [indent_w=0]
/// @return {Undefined}
function ImGuiIndent(indent_w=0) {
	return __imgui_indent(indent_w);
}

/// @argument {Real} [indent_w=0]
/// @return {Undefined}
function ImGuiUnindent(indent_w=0) {
	return __imgui_unindent(indent_w);
}

/// @argument {Real} [offset_from_start_x=0]
/// @argument {Real} [spacing=-1]
/// @return {Undefined}
function ImGuiSameLine(offset_from_start_x=0, spacing=-1) {
	return __imgui_sameline(offset_from_start_x, spacing);
}

/// @return {Undefined}
function ImGuiBeginGroup() {
	return __imgui_begin_group();
}

/// @return {Undefined}
function ImGuiEndGroup() {
	return __imgui_end_group();
}

/// @return {Real}
function ImGuiGetCursorPosX() {
	return __imgui_get_cursor_pos_x();
}

/// @return {Real}
function ImGuiGetCursorPosY() {
	return __imgui_get_cursor_pos_y();
}

/// @return {Real}
function ImGuiGetCursorStartPosX() {
	return __imgui_get_cursor_start_pos_x();
}

/// @return {Real}
function ImGuiGetCursorStartPosY() {
	return __imgui_get_cursor_start_pos_y();
}

/// @return {Real}
function ImGuiGetCursorScreenPosX() {
	return __imgui_get_cursor_screen_pos_x();
}

/// @return {Real}
function ImGuiGetCursorScreenPosY() {
	return __imgui_get_cursor_screen_pos_y();
}

/// @argument {Real} _x
/// @argument {Real} _y
/// @return {Undefined}
function ImGuiSetCursorScreenPos(_x, _y) {
	return __imgui_set_cursor_screen_pos(_x, _y);
}

/// @argument {Real} local_x
/// @argument {Real} local_y
/// @return {Undefined}
function ImGuiSetCursorPos(local_x, local_y) {
	return __imgui_set_cursor_pos(local_x, local_y);
}

/// @argument {Real} local_x
/// @return {Undefined}
function ImGuiSetCursorPosX(local_x) {
	return __imgui_set_cursor_pos_x(local_x);
}

/// @argument {Real} local_y
/// @return {Undefined}
function ImGuiSetCursorPosY(local_y) {
	return __imgui_set_cursor_pos_y(local_y);
}

/// @return {Real}
function ImGuiGetTextLineHeight() {
	return __imgui_get_text_line_height();
}

/// @return {Real}
function ImGuiGetTextLineHeightWithSpacing() {
	return __imgui_get_text_line_height_with_spacing();
}

/// @return {Real}
function ImGuiGetFrameHeight() {
	return __imgui_get_frame_height();
}

/// @return {Real}
function ImGuiGetFrameHeightWithSpacing() {
	return __imgui_get_frame_height_with_spacing();
}

/// @return {Real}
function ImGuiGetContentRegionAvailX() {
	return __imgui_get_content_region_avail_x();
}

/// @return {Real}
function ImGuiGetContentRegionAvailY() {
	return __imgui_get_content_region_avail_y();
}

/// @return {Real}
function ImGuiGetContentRegionMaxX() {
	return __imgui_get_content_region_max_x();
}

/// @return {Real}
function ImGuiGetContentRegionMaxY() {
	return __imgui_get_content_region_max_y();
}

/// @return {Real}
function ImGuiGetWindowContentRegionMinX() {
	return __imgui_get_window_content_region_min_x();
}

/// @return {Real}
function ImGuiGetWindowContentRegionMinY() {
	return __imgui_get_window_content_region_min_y();
}

/// @return {Real}
function ImGuiGetWindowContentRegionMaxX() {
	return __imgui_get_window_content_region_max_x();
}

/// @return {Real}
function ImGuiGetWindowContentRegionMaxY() {
	return __imgui_get_window_content_region_max_y();
}

/// @argument {Real} item_width
/// @return {Undefined}
function ImGuiPushItemWidth(item_width) {
	return __imgui_push_item_width(item_width);
}

/// @return {Undefined}
function ImGuiPopItemWidth() {
	return __imgui_pop_item_width();
}

/// @argument {Real} item_width
/// @return {Undefined}
function ImGuiSetNextItemWidth(item_width) {
	return __imgui_set_next_item_width(item_width);
}

/// @return {Real}
function ImGuiCalcItemWidth() {
	return __imgui_calc_item_width();
}

/// @argument {Real} [wrap_local_pos_x=0]
/// @return {Undefined}
function ImGuiPushTextWrapPos(wrap_local_pos_x=0) {
	return __imgui_push_text_wrap_pos(wrap_local_pos_x);
}

/// @return {Undefined}
function ImGuiPopTextWrapPos() {
	return __imgui_pop_text_wrap_pos();
}

/// @argument {Real} clip_min_x
/// @argument {Real} clip_min_y
/// @argument {Real} clip_max_x
/// @argument {Real} clip_max_y
/// @argument {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function ImGuiPushClipRect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
}

/// @return {Undefined}
function ImGuiPopClipRect() {
	return __imgui_pop_clip_rect();
}

/// @argument {String} label
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
function ImGuiBeginListBox(label, width=0, height=0) {
	return __imgui_begin_listbox(label, width, height);
}

/// @return {Undefined}
function ImGuiEndListBox() {
	return __imgui_end_listbox();
}

/// @return {Unknown<unset>}
function ImGuiListBox() {
	return __imgui_listbox();
}

/// @return {Bool}
function ImGuiBeginMenuBar() {
	return __imgui_begin_menubar();
}

/// @return {Undefined}
function ImGuiEndMenuBar() {
	return __imgui_end_menubar();
}

/// @return {Bool}
function ImGuiBeginMainMenuBar() {
	return __imgui_begin_mainmenubar();
}

/// @return {Undefined}
function ImGuiEndMainMenuBar() {
	return __imgui_end_mainmenubar();
}

/// @argument {String} label
/// @argument {Bool} [enabled=true]
/// @return {Bool}
function ImGuiBeginMenu(label, enabled=true) {
	return __imgui_begin_menu(label, enabled);
}

/// @return {Undefined}
function ImGuiEndMenu() {
	return __imgui_end_menu();
}

/// @argument {String} label
/// @argument {String} [shortcut=]
/// @argument {Bool} [selected=undefined]
/// @argument {Bool} [enabled=true]
/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiMenuItem(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
	return __imgui_menu_item(label, shortcut, selected, enabled, mask);
}

/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Bool}
function ImGuiBeginDragDropSource(flags=ImGuiDragDropFlags.None) {
	return __imgui_begin_drag_drop_source(flags);
}

/// @return {Undefined}
function ImGuiEndDragDropSource() {
	return __imgui_end_drag_drop_source();
}

/// @return {Bool}
function ImGuiBeginDragDropTarget() {
	return __imgui_begin_drag_drop_target();
}

/// @return {Undefined}
function ImGuiEndDragDropTarget() {
	return __imgui_end_drag_drop_target();
}

/// @argument {String} type
/// @argument {Any} data
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Bool}
function ImGuiSetDragDropPayload(type, data, cond=ImGuiCond.None) {
	return __imgui_set_drag_drop_payload(type, data, cond);
}

/// @argument {String} type
/// @argument {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Any|Undefined}
function ImGuiAcceptDragDropPayload(type, flags=ImGuiDragDropFlags.None) {
	return __imgui_accept_drag_drop_payload(type, flags);
}

/// @return {Any|Undefined}
function ImGuiGetDragDropPayload() {
	return __imgui_get_drag_drop_payload();
}

/// @return {String|Undefined}
function ImGuiGetDragDropPayloadType() {
	return __imgui_get_payload_type();
}

/// @argument {String} label
/// @argument {Array<Real>} values
/// @argument {Real} [values_offset=0]
/// @argument {String} [overlay_text=]
/// @argument {Real} [scale_min=0]
/// @argument {Real} [scale_max=0]
/// @argument {Real} [graph_width=0]
/// @argument {Real} [graph_height=0]
/// @return {Undefined}
function ImGuiPlotLines(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
	return __imgui_plot_lines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
}

/// @argument {String} label
/// @argument {Array<Real>} values
/// @argument {Real} [values_offset=0]
/// @argument {String} [overlay_text=]
/// @argument {Real} [scale_min=0]
/// @argument {Real} [scale_max=0]
/// @argument {Real} [graph_width=0]
/// @argument {Real} [graph_height=0]
/// @return {Undefined}
function ImGuiPlotHistogram(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
	return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
}

/// @argument {String} str_id
/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginPopup(str_id, flags=ImGuiWindowFlags.None) {
	return __imgui_begin_popup(str_id, flags);
}

/// @argument {String} name
/// @argument {Bool} [open=undefined]
/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBeginPopupModal(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin_popup_modal(name, open, flags, mask);
}

/// @return {Undefined}
function ImGuiEndPopup() {
	return __imgui_end_popup();
}

/// @argument {String} str_id
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Undefined}
function ImGuiOpenPopup(str_id, flags=ImGuiPopupFlags.None) {
	return __imgui_open_popup(str_id, flags);
}

/// @argument {String} [str_id=undefined]
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Undefined}
function ImGuiOpenPopupOnItemClick(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_open_popup_on_item_click(str_id, flags);
}

/// @return {Undefined}
function ImGuiCloseCurrentPopup() {
	return __imgui_close_current_popup();
}

/// @argument {String} [str_id=undefined]
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextItem(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_item(str_id, flags);
}

/// @argument {String} [str_id=undefined]
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextWindow(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_window(str_id, flags);
}

/// @argument {String} [str_id=undefined]
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextVoid(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	return __imgui_begin_popup_context_void(str_id, flags);
}

/// @argument {String} str_id
/// @argument {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Bool}
function ImGuiIsPopupOpen(str_id, flags=ImGuiPopupFlags.None) {
	return __imgui_is_popup_open(str_id, flags);
}

/// @argument {String} label
/// @argument {Bool} [selected=false]
/// @argument {Enum.ImGuiSelectableFlags} [flags=ImGuiSelectableFlags.None]
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
function ImGuiSelectable(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
	return __imgui_selectable(label, selected, flags, width, height);
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderFloat(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_float(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat2(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_float2(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat3(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_float3(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat4(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_speed=1]
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloatN(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Real} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderInt(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_int(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt2(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_int2(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt3(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_int3(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt4(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Array<Real>} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderIntN(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_intn(label, v, v_min, v_max, format, flags, array_length(v));
}

/// @argument {String} label
/// @argument {Real} width
/// @argument {Real} height
/// @argument {Real} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%.3f]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiVSliderFloat(label, width, height, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	return __imgui_vslider_float(label, width, height, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Real} width
/// @argument {Real} height
/// @argument {Real} v
/// @argument {Real} [v_min=0]
/// @argument {Real} [v_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiVSliderInt(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
}

/// @argument {String} label
/// @argument {Real} v_rad
/// @argument {Real} [v_degrees_min=0]
/// @argument {Real} [v_degrees_max=0]
/// @argument {String} [format=%d]
/// @argument {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderAngle(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
}

/// @return {Undefined}
function ImGuiStyleColorsDark() {
	return __imgui_style_colors_dark();
}

/// @return {Undefined}
function ImGuiStyleColorsLight() {
	return __imgui_style_colors_light();
}

/// @return {Undefined}
function ImGuiStyleColorsClassic() {
	return __imgui_style_colors_classic();
}

/// @argument {Real} idx
/// @argument {Real} col
/// @argument {Real} alpha
/// @return {Undefined}
function ImGuiPushStyleColor(idx, col, alpha) {
	return __imgui_push_style_color(idx, col, alpha);
}

/// @argument {Real} [count=1]
/// @return {Undefined}
function ImGuiPopStyleColor(count=1) {
	return __imgui_pop_style_color(count);
}

/// @argument {Real} idx
/// @argument {Real} val
/// @argument {Any} [val2=undefined]
/// @return {Undefined}
function ImGuiPushStyleVar(idx, val, val2=undefined) {
	return __imgui_push_style_var(idx, val, val2);
}

/// @argument {Real} [count=1]
/// @return {Undefined}
function ImGuiPopStyleVar(count=1) {
	return __imgui_pop_style_var(count);
}

/// @argument {Real} idx
/// @return {Real}
function ImGuiGetStyleColor(idx) {
	return __imgui_get_style_color(idx);
}

/// @argument {Real} idx
/// @return {String}
function ImGuiGetStyleColorName(idx) {
	return __imgui_get_style_color_name(idx);
}

/// @argument {String} str_id
/// @argument {Real} column
/// @argument {Enum.ImGuiTableFlags} [flags=ImGuiTableFlags.None]
/// @argument {Real} [outer_width=0]
/// @argument {Real} [outer_height=0]
/// @argument {Real} [inner_width=0]
/// @return {Bool}
function ImGuiBeginTable(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
	return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
}

/// @return {Undefined}
function ImGuiEndTable() {
	return __imgui_end_table();
}

/// @argument {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
/// @argument {Real} [min_row_height=0]
/// @return {Undefined}
function ImGuiTableNextRow(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
	return __imgui_table_next_row(row_flags, min_row_height);
}

/// @return {Bool}
function ImGuiTableNextColumn() {
	return __imgui_table_next_column();
}

/// @argument {Real} column_n
/// @return {Bool}
function ImGuiTableSetColumnIndex(column_n) {
	return __imgui_table_set_column_index(column_n);
}

/// @argument {String} label
/// @argument {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
/// @argument {Real} [user_id=0]
/// @return {Undefined}
function ImGuiTableSetupColumn(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
	return __imgui_table_setup_column(label, flags, user_id);
}

/// @argument {Real} cols
/// @argument {Real} rows
/// @return {Undefined}
function ImGuiTableSetupScrollFreeze(cols, rows) {
	return __imgui_table_setup_scroll_freeze(cols, rows);
}

/// @return {Undefined}
function ImGuiTableHeadersRow() {
	return __imgui_table_headers_row();
}

/// @argument {String} label
/// @return {Undefined}
function ImGuiTableHeader(label) {
	return __imgui_table_header(label);
}

/// @return {Real}
function ImGuiTableGetColumnCount() {
	return __imgui_table_get_column_count();
}

/// @return {Real}
function ImGuiTableGetColumnIndex() {
	return __imgui_table_get_column_index();
}

/// @argument {Real} [column_n=-1]
/// @return {String}
function ImGuiTableGetColumnName(column_n=-1) {
	return __imgui_table_get_column_name(column_n);
}

/// @argument {Real} [column_n=-1]
/// @return {Real}
function ImGuiTableGetColumnFlags(column_n=-1) {
	return __imgui_table_get_column_flags(column_n);
}

/// @return {Real}
function ImGuiTableGetRowIndex() {
	return __imgui_table_get_row_index();
}

/// @argument {Real} column_n
/// @argument {Bool} v
/// @return {Undefined}
function ImGuiTableSetColumnEnabled(column_n, v) {
	return __imgui_table_set_column_enabled(column_n, v);
}

/// @argument {Real} target
/// @argument {Real} col
/// @argument {Real} [column_n=-1]
/// @return {Undefined}
function ImGuiTableSetBgColor(target, col, column_n=-1) {
	return __imgui_table_set_bg_color(target, col, column_n);
}

/// @argument {Real} [count=1]
/// @argument {String} [_id=]
/// @argument {Bool} [border=true]
/// @return {Undefined}
function ImGuiColumns(count=1, _id="", border=true) {
	return __imgui_columns(count, _id, border);
}

/// @return {Undefined}
function ImGuiNextColumn() {
	return __imgui_next_column();
}

/// @return {Real}
function ImGuiGetColumnIndex() {
	return __imgui_get_column_index();
}

/// @argument {Real} [column_index=-1]
/// @return {Real}
function ImGuiGetColumnWidth(column_index=-1) {
	return __imgui_get_column_width(column_index);
}

/// @argument {Real} column_index
/// @argument {Real} width
/// @return {Undefined}
function ImGuiSetColumnWidth(column_index, width) {
	return __imgui_set_column_width(column_index, width);
}

/// @argument {Real} [column_index=-1]
/// @return {Real}
function ImGuiGetColumnOffset(column_index=-1) {
	return __imgui_get_column_offset(column_index);
}

/// @argument {Real} column_index
/// @argument {Real} offset_x
/// @return {Undefined}
function ImGuiSetColumnOffset(column_index, offset_x) {
	return __imgui_set_column_offset(column_index, offset_x);
}

/// @return {Real}
function ImGuiGetColumnsCount() {
	return __imgui_get_columns_count();
}

/// @argument {String} str_id
/// @argument {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
/// @return {Bool}
function ImGuiBeginTabBar(str_id, flags=ImGuiTabBarFlags.None) {
	return __imgui_begin_tab_bar(str_id, flags);
}

/// @return {Undefined}
function ImGuiEndTabBar() {
	return __imgui_end_tab_bar();
}

/// @argument {String} label
/// @argument {Bool} [open=undefined]
/// @argument {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBeginTabItem(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin_tab_item(label, open, flags, mask);
}

/// @return {Undefined}
function ImGuiEndTabItem() {
	return __imgui_end_tab_item();
}

/// @argument {String} label
/// @argument {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @return {Bool}
function ImGuiTabItemButton(label, flags=ImGuiTabItemFlags.None) {
	return __imgui_tab_item_button(label, flags);
}

/// @argument {String} tab_or_docked_window_label
/// @return {Undefined}
function ImGuiSetTabItemClosed(tab_or_docked_window_label) {
	return __imgui_set_tab_item_closed(tab_or_docked_window_label);
}

/// @argument {String} text
/// @return {Undefined}
function ImGuiTextUnformatted(text) {
	return __imgui_text_unformatted(text);
}

/// @argument {String} val
/// @return {Undefined}
function ImGuiText(val) {
	return __imgui_text(val);
}

/// @argument {String} val
/// @argument {Real} color
/// @argument {Real} [alpha=1]
/// @return {Undefined}
function ImGuiTextColored(val, color, alpha=1) {
	return __imgui_text_colored(val, color, alpha);
}

/// @argument {String} val
/// @return {Undefined}
function ImGuiTextDisabled(val) {
	return __imgui_text_disabled(val);
}

/// @argument {String} val
/// @return {Undefined}
function ImGuiTextWrapped(val) {
	return __imgui_text_wrapped(val);
}

/// @argument {String} label
/// @argument {String} val
/// @return {Undefined}
function ImGuiLabelText(label, val) {
	return __imgui_label_text(label, val);
}

/// @argument {String} val
/// @return {Undefined}
function ImGuiBulletText(val) {
	return __imgui_bullet_text(val);
}

/// @return {Unknown<unset>}
function ImGuiValue() {
	return __imgui_value();
}

/// @return {Undefined}
function ImGuiBeginTooltip() {
	return __imgui_begin_tooltip();
}

/// @return {Undefined}
function ImGuiEndTooltip() {
	return __imgui_end_tooltip();
}

/// @argument {String} val
/// @return {Undefined}
function ImGuiSetTooltip(val) {
	return __imgui_set_tooltip(val);
}

/// @argument {String} label
/// @return {Bool}
function ImGuiTreeNode(label) {
	return __imgui_tree_node(label);
}

/// @argument {String} label
/// @argument {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @return {Bool}
function ImGuiTreeNodeEx(label, flags=ImGuiTreeNodeFlags.None) {
	return __imgui_tree_node_ex(label, flags);
}

/// @argument {String} str_id
/// @return {Undefined}
function ImGuiTreePush(str_id) {
	return __imgui_tree_push(str_id);
}

/// @return {Undefined}
function ImGuiTreePop() {
	return __imgui_tree_pop();
}

/// @return {Real}
function ImGuiGetTreeNodeToLabelSpacing() {
	return __imgui_get_tree_node_to_label_spacing();
}

/// @argument {Bool} is_open
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextItemOpen(is_open, cond=ImGuiCond.None) {
	return __imgui_set_next_item_open(is_open, cond);
}

/// @argument {String} label
/// @argument {Bool} [_visible=undefined]
/// @argument {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiCollapsingHeader(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_collapsing_header(label, _visible, flags, mask);
}

/// @argument {String} label
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @return {Bool}
function ImGuiButton(label, width=0, height=0) {
	return __imgui_button(label, width, height);
}

/// @argument {String} label
/// @return {Bool}
function ImGuiSmallButton(label) {
	return __imgui_small_button(label);
}

/// @argument {String} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Enum.ImGuiButtonFlags} [flags=ImGuiButtonFlags.None]
/// @return {Bool}
function ImGuiInvisibleButton(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
	return __imgui_invisible_button(_id, width, height, flags);
}

/// @argument {String} str_id
/// @argument {Real} dir
/// @return {Bool}
function ImGuiArrowButton(str_id, dir) {
	return __imgui_arrow_button(str_id, dir);
}

/// @argument {Real} sprite
/// @argument {Real} subimg
/// @argument {Real} [color=c_white]
/// @argument {Real} [alpha=1]
/// @argument {Real} [width=sprite_get_width???sprite???]
/// @argument {Real} [height=sprite_get_height???sprite???]
/// @return {Undefined}
function ImGuiImage(sprite, subimg, color=c_white, alpha=1, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
	return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
}

/// @argument {String} str_id
/// @argument {Real} sprite
/// @argument {Real} subimg
/// @argument {Real} color
/// @argument {Real} alpha
/// @argument {Real} bg_color
/// @argument {Real} bg_alpha
/// @argument {Real} [width=sprite_get_width???sprite???]
/// @argument {Real} [height=sprite_get_height???sprite???]
/// @return {Bool}
function ImGuiImageButton(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
	return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
}

/// @argument {Real} surface
/// @argument {Real} [color=c_white]
/// @argument {Real} [alpha=1]
/// @argument {Real} [width=surface_get_width???surface???]
/// @argument {Real} [height=surface_get_height???surface???]
/// @return {Undefined}
function ImGuiSurface(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
	var _tex = surface_get_texture(surface); 
	return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
}

/// @argument {String} label
/// @argument {Bool} checked
/// @return {Bool}
function ImGuiCheckbox(label, checked) {
	return __imgui_checkbox(label, checked);
}

/// @argument {String} label
/// @argument {Real} flags
/// @argument {Real} flags_value
/// @return {Real}
function ImGuiCheckboxFlags(label, flags, flags_value) {
	return __imgui_checkbox_flags(label, flags, flags_value);
}

/// @argument {String} label
/// @argument {Bool} active
/// @return {Bool}
function ImGuiRadioButton(label, active) {
	return __imgui_radio_button(label, active);
}

/// @argument {Real} _frac
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {String} [overlay=]
/// @return {Undefined}
function ImGuiProgressBar(_frac, width=0, height=0, overlay="") {
	return __imgui_progressbar(_frac, width, height, overlay);
}

/// @return {Undefined}
function ImGuiBullet() {
	return __imgui_bullet();
}

/// @argument {String} name
/// @argument {Bool} [open=undefined]
/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @argument {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBegin(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	return __imgui_begin(name, open, flags, mask);
}

/// @return {Undefined}
function ImGuiEnd() {
	return __imgui_end();
}

/// @return {Undefined}
function ImGuiEndFrame() {
	return __imgui_endframe();
}

/// @argument {String} str_id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Enum.ImGuiChildFlags} [child_flags=ImGuiChildFlags.None]
/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginChild(str_id, width=0, height=0, child_flags=ImGuiChildFlags.None, flags=ImGuiWindowFlags.None) {
	return __imgui_begin_child(str_id, width, height, child_flags, flags);
}

/// @return {Undefined}
function ImGuiEndChild() {
	return __imgui_end_child();
}

/// @argument {Real} _id
/// @argument {Real} [width=0]
/// @argument {Real} [height=0]
/// @argument {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginChildFrame(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
	return __imgui_begin_child_frame(_id, width, height, flags);
}

/// @return {Undefined}
function ImGuiEndChildFrame() {
	return __imgui_end_child_frame();
}

/// @return {Bool}
function ImGuiIsWindowAppearing() {
	return __imgui_is_window_appearing();
}

/// @return {Bool}
function ImGuiIsWindowCollapsed() {
	return __imgui_is_window_collapsed();
}

/// @argument {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
/// @return {Bool}
function ImGuiIsWindowFocused(flags=ImGuiFocusedFlags.None) {
	return __imgui_is_window_focused(flags);
}

/// @argument {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function ImGuiIsWindowHovered(flags=ImGuiHoveredFlags.None) {
	return __imgui_is_window_hovered(flags);
}

/// @return {Real}
function ImGuiGetWindowDpiScale() {
	return __imgui_get_window_dpi_scale();
}

/// @return {Real}
function ImGuiGetWindowPosX() {
	return __imgui_get_window_x();
}

/// @return {Real}
function ImGuiGetWindowPosY() {
	return __imgui_get_window_y();
}

/// @return {Real}
function ImGuiGetWindowWidth() {
	return __imgui_get_window_width();
}

/// @return {Real}
function ImGuiGetWindowHeight() {
	return __imgui_get_window_height();
}

/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @argument {Real} [pivot_x=0]
/// @argument {Real} [pivot_y=0]
/// @return {Undefined}
function ImGuiSetNextWindowPos(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
	return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
}

/// @argument {Real} width
/// @argument {Real} height
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowSize(width, height, cond=ImGuiCond.None) {
	return __imgui_set_next_window_size(width, height, cond);
}

/// @argument {Real} min_width
/// @argument {Real} min_height
/// @argument {Real} max_width
/// @argument {Real} max_height
/// @return {Undefined}
function ImGuiSetNextWindowSizeConstraints(min_width, min_height, max_width, max_height) {
	return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
}

/// @argument {Real} width
/// @argument {Real} height
/// @return {Undefined}
function ImGuiSetNextWindowContentSize(width, height) {
	return __imgui_set_next_window_content_size(width, height);
}

/// @argument {Bool} collapsed
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowCollapsed(collapsed, cond=ImGuiCond.None) {
	return __imgui_set_next_window_collapsed(collapsed, cond);
}

/// @return {Undefined}
function ImGuiSetNextWindowFocus() {
	return __imgui_set_next_window_focus();
}

/// @argument {Real} scroll_x
/// @argument {Real} scroll_y
/// @return {Undefined}
function ImGuiSetNextWindowScroll(scroll_x, scroll_y) {
	return __imgui_set_next_window_scroll(scroll_x, scroll_y);
}

/// @argument {Real} alpha
/// @return {Undefined}
function ImGuiSetNextWindowBgAlpha(alpha) {
	return __imgui_set_next_window_bgalpha(alpha);
}

/// @return {Real}
function ImGuiGetScrollX() {
	return __imgui_get_scroll_x();
}

/// @return {Real}
function ImGuiGetScrollY() {
	return __imgui_get_scroll_y();
}

/// @argument {Real} scroll_x
/// @return {Undefined}
function ImGuiSetScrollX(scroll_x) {
	return __imgui_set_scroll_x(scroll_x);
}

/// @argument {Real} scroll_y
/// @return {Undefined}
function ImGuiSetScrollY(scroll_y) {
	return __imgui_set_scroll_y(scroll_y);
}

/// @return {Real}
function ImGuiGetScrollMaxX() {
	return __imgui_get_scroll_max_x();
}

/// @return {Real}
function ImGuiGetScrollMaxY() {
	return __imgui_get_scroll_max_y();
}

/// @argument {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollHereX(center_x_ratio=0.5) {
	return __imgui_set_scroll_here_x(center_x_ratio);
}

/// @argument {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollHereY(center_y_ratio=0.5) {
	return __imgui_set_scroll_here_y(center_y_ratio);
}

/// @argument {Real} local_x
/// @argument {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollFromPosX(local_x, center_x_ratio=0.5) {
	return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
}

/// @argument {Real} local_y
/// @argument {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollFromPosY(local_y, center_y_ratio=0.5) {
	return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
}

/// @argument {Real} _x
/// @argument {Real} _y
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowPos(_x, _y, cond=ImGuiCond.None) {
	return __imgui_set_window_pos(_x, _y, cond);
}

/// @argument {String} [name=]
/// @argument {Real} width
/// @argument {Real} height
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowSize(name="", width, height, cond=ImGuiCond.None) {
	return __imgui_set_window_size(name, width, height, cond);
}

/// @argument {String} [name=]
/// @argument {Bool} collapsed
/// @argument {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowCollapsed(name="", collapsed, cond=ImGuiCond.None) {
	return __imgui_set_window_collapsed(name, collapsed, cond);
}

/// @argument {String} [name=]
/// @return {Undefined}
function ImGuiSetWindowFocus(name="") {
	return __imgui_set_window_focus(name);
}