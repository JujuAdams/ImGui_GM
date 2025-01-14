/// @return {Pointer}
function ImGuiCreateContext() {
	if (IMGUI_ENABLED) {
		return __imgui_create_context();
	} else {
		return undefined;
	}
}

/// @param {Pointer} ctx
/// @return {Undefined}
function ImGuiDestroyContext(ctx) {
	if (IMGUI_ENABLED) {
		return __imgui_destroy_context(ctx);
	} else {
		return undefined;
	}
}

/// @return {Pointer}
function ImGuiGetCurrentContext() {
	if (IMGUI_ENABLED) {
		return __imgui_get_current_context();
	} else {
		return undefined;
	}
}

/// @param {Pointer} ctx
/// @return {Undefined}
function ImGuiSetCurrentContext(ctx) {
	if (IMGUI_ENABLED) {
		return __imgui_set_current_context(ctx);
	} else {
		return undefined;
	}
}

/// @param {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowDemoWindow(open=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_show_demo_window(open);
	} else {
		return undefined;
	}
}

/// @param {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowMetricsWindow(open=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_show_metrics_window(open);
	} else {
		return undefined;
	}
}

/// @param {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowDebugLogWindow(open=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_show_debug_log_window(open);
	} else {
		return undefined;
	}
}

/// @param {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowStackToolWindow(open=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_show_stack_tool_window(open);
	} else {
		return undefined;
	}
}

/// @param {Bool} [open=undefined]
/// @return {Bool}
function ImGuiShowAboutWindow(open=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_show_about_window(open);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiShowStyleEditor() {
	if (IMGUI_ENABLED) {
		return __imgui_show_style_editor();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @return {Bool}
function ImGuiShowStyleSelector(label) {
	if (IMGUI_ENABLED) {
		return __imgui_show_style_selector(label);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @return {Undefined}
function ImGuiShowFontSelector(label) {
	if (IMGUI_ENABLED) {
		return __imgui_show_font_selector(label);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiShowUserGuide() {
	if (IMGUI_ENABLED) {
		return __imgui_show_user_guide();
	} else {
		return undefined;
	}
}

/// @return {String}
function ImGuiGetVersion() {
	if (IMGUI_ENABLED) {
		return __imgui_get_version();
	} else {
		return undefined;
	}
}

/// @param {String|Real} _id
/// @return {Undefined}
function ImGuiPushID(_id) {
	if (IMGUI_ENABLED) {
		return __imgui_push_id(_id);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopID() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_id();
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @return {Real}
function ImGuiGetID(str_id) {
	if (IMGUI_ENABLED) {
		return __imgui_get_id(str_id);
	} else {
		return undefined;
	}
}

/// @param {Bool} [disabled=true]
/// @return {Undefined}
function ImGuiBeginDisabled(disabled=true) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_disabled(disabled);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndDisabled() {
	if (IMGUI_ENABLED) {
		return __imgui_end_disabled();
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function ImGuiIsItemHovered(flags=ImGuiHoveredFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_hovered(flags);
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemActive() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_active();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemFocused() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_focused();
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiMouseButton} [mouse_button=ImGuiMouseButton.Left]
/// @return {Bool}
function ImGuiIsItemClicked(mouse_button=ImGuiMouseButton.Left) {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_clicked(mouse_button);
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemVisible() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_visible();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemEdited() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_edited();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemActivated() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_activated();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemDeactivated() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_deactivated();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemDeactivatedAfterEdit() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_deactivated_after_edit();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsItemToggledOpen() {
	if (IMGUI_ENABLED) {
		return __imgui_is_item_toggled_open();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsAnyItemHovered() {
	if (IMGUI_ENABLED) {
		return __imgui_is_any_item_hovered();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsAnyItemActive() {
	if (IMGUI_ENABLED) {
		return __imgui_is_any_item_active();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsAnyItemFocused() {
	if (IMGUI_ENABLED) {
		return __imgui_is_any_item_focused();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemID() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_id();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectMinX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_min_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectMinY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_min_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectMaxX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_max_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectMaxY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_max_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectSizeX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_size_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetItemRectSizeY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_item_rect_size_y();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiSetItemAllowOverlap() {
	if (IMGUI_ENABLED) {
		return __imgui_set_item_allow_overlap();
	} else {
		return undefined;
	}
}

/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @return {Bool}
function ImGuiIsRectVisible(x1, y1, x2, y2) {
	if (IMGUI_ENABLED) {
		return __imgui_is_rect_visible(x1, y1, x2, y2);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetTime() {
	if (IMGUI_ENABLED) {
		return __imgui_get_time();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetFrameCount() {
	if (IMGUI_ENABLED) {
		return __imgui_get_frame_count();
	} else {
		return undefined;
	}
}

/// @param {String} text
/// @param {Bool} [hide_text_after_double_hash=false]
/// @param {Real} [wrap_width=-1]
/// @return {Real}
function ImGuiCalcTextWidth(text, hide_text_after_double_hash=false, wrap_width=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_calc_text_width(text, hide_text_after_double_hash, wrap_width);
	} else {
		return undefined;
	}
}

/// @param {String} text
/// @param {Bool} [hide_text_after_double_hash=false]
/// @param {Real} [wrap_width=-1]
/// @return {Real}
function ImGuiCalcTextHeight(text, hide_text_after_double_hash=false, wrap_width=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_calc_text_height(text, hide_text_after_double_hash, wrap_width);
	} else {
		return undefined;
	}
}

/// @param {Bool} allow_keyboard_focus
/// @return {Undefined}
function ImGuiPushAllowKeyboardFocus(allow_keyboard_focus) {
	if (IMGUI_ENABLED) {
		return __imgui_push_allow_keyboard_focus(allow_keyboard_focus);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopAllowKeyboardFocus() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_allow_keyboard_focus();
	} else {
		return undefined;
	}
}

/// @param {Real} [offset=0]
/// @return {Undefined}
function ImGuiSetKeyboardFocusHere(offset=0) {
	if (IMGUI_ENABLED) {
		return __imgui_set_keyboard_focus_here(offset);
	} else {
		return undefined;
	}
}

/// @param {Bool} _repeat
/// @return {Undefined}
function ImGuiPushButtonRepeat(_repeat) {
	if (IMGUI_ENABLED) {
		return __imgui_push_button_repeat(_repeat);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopButtonRepeat() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_button_repeat();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiSetItemDefaultFocus() {
	if (IMGUI_ENABLED) {
		return __imgui_set_item_default_focus();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiConfigFlagsGet() {
	if (IMGUI_ENABLED) {
		return __imgui_config_flags_get();
	} else {
		return undefined;
	}
}

/// @param {Real} flags
/// @return {Unknown<unset>}
function ImGuiConfigFlagsSet(flags) {
	if (IMGUI_ENABLED) {
		return __imgui_config_flags_set(flags);
	} else {
		return undefined;
	}
}

/// @param {Real} flag
/// @return {Bool}
function ImGuiConfigFlagToggle(flag) {
	if (IMGUI_ENABLED) {
		return __imgui_config_flag_toggle(flag);
	} else {
		return undefined;
	}
}

/// @return {Pointer}
function ImGuiGetMainViewport() {
	if (IMGUI_ENABLED) {
		return __imgui_get_main_viewport();
	} else {
		return undefined;
	}
}

/// @param {String} text
/// @return {Undefined}
function ImGuiLogText(text) {
	if (IMGUI_ENABLED) {
		return __imgui_log_text(text);
	} else {
		return undefined;
	}
}

/// @param {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantKeyboardCapture(val=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_want_keyboard_capture(val);
	} else {
		return undefined;
	}
}

/// @param {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantMouseCapture(val=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_want_mouse_capture(val);
	} else {
		return undefined;
	}
}

/// @param {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantTextInput(val=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_want_text_input(val);
	} else {
		return undefined;
	}
}

/// @param {Bool} [val=undefined]
/// @return {Bool}
function ImGuiWantMouseCaptureUnlessPopupClose(val=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_want_mouse_unless_popup_close(val);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} col
/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function ImGuiColorEdit3(label, col, flags=ImGuiColorEditFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_color_edit3(label, col, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} col
/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Real}
function ImGuiColorPicker3(label, col, flags=ImGuiColorEditFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_color_picker3(label, col, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {ImGuiColor} col
/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function ImGuiColorEdit4(label, col, flags=ImGuiColorEditFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_color_edit4(label, col, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {ImGuiColor} col
/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Bool}
function ImGuiColorPicker4(label, col, flags=ImGuiColorEditFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_color_picker4(label, col, flags);
	} else {
		return undefined;
	}
}

/// @param {String} desc_id
/// @param {Real} color
/// @param {Real} [alpha=1]
/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function ImGuiColorButton(desc_id, color, alpha=1, flags=ImGuiColorEditFlags.None, width=0, height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_color_button(desc_id, color, alpha, flags, width, height);
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiCol} [flags=ImGuiColorEditFlags.None]
/// @return {Undefined}
function ImGuiSetColorEditOptions(flags=ImGuiColorEditFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_color_edit_options(flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} preview
/// @param {Real} flags
/// @return {Bool}
function ImGuiBeginCombo(label, preview, flags) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_combo(label, preview, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndCombo() {
	if (IMGUI_ENABLED) {
		return __imgui_end_combo();
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiCombo() {
	if (IMGUI_ENABLED) {
		return __imgui_combo();
	} else {
		return undefined;
	}
}

/// @param {Real} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockSpace(_id, width=0, height=0, flags=ImGuiDockNodeFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_dock_space(_id, width, height, flags);
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockSpaceOverViewport(flags=ImGuiDockNodeFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_dock_space_over_viewport(flags);
	} else {
		return undefined;
	}
}

/// @param {Real} dock_id
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowDockID(dock_id, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_dock_id(dock_id, cond);
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiSetNextWindowClass() {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_class();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowDockID() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_dock_id();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsWindowDocked() {
	if (IMGUI_ENABLED) {
		return __imgui_is_window_docked();
	} else {
		return undefined;
	}
}

/// @param {String} window_name
/// @param {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderDockWindow(window_name, node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_dock_window(window_name, node_id);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @return {Pointer}
function ImGuiDockBuilderGetNode(node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_get_node(node_id);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @return {Pointer}
function ImGuiDockBuilderGetCentralNode(node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_get_central_node(node_id);
	} else {
		return undefined;
	}
}

/// @param {Real} [node_id=0]
/// @param {Enum.ImGuiDockNodeFlags} [flags=ImGuiDockNodeFlags.None]
/// @return {Real}
function ImGuiDockBuilderAddNode(node_id=0, flags=ImGuiDockNodeFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_add_node(node_id, flags);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderRemoveNode(node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_remove_node(node_id);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @param {Bool} [clear_settings_refs=true]
/// @return {Undefined}
function ImGuiDockBuilderRemoveNodeDockedWindows(node_id, clear_settings_refs=true) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_remove_node_docked_windows(node_id, clear_settings_refs);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderRemoveNodeChildNodes(node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_remove_node_child_nodes(node_id);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function ImGuiDockBuilderSetNodePos(node_id, _x, _y) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_set_node_pos(node_id, _x, _y);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function ImGuiDockBuilderSetNodeSize(node_id, width, height) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_set_node_size(node_id, width, height);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @param {Real} split_dir
/// @param {Real} size_ratio_for_node_at_dir
/// @return {Array<ImGuiID>}
function ImGuiDockBuilderSplitNode(node_id, split_dir, size_ratio_for_node_at_dir) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_split_node(node_id, split_dir, size_ratio_for_node_at_dir);
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiDockBuilderCopyDockSpace() {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_copy_dock_space();
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiDockBuilderCopyDockNode() {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_copy_node();
	} else {
		return undefined;
	}
}

/// @param {String} src_name
/// @param {String} dst_name
/// @return {Undefined}
function ImGuiDockBuilderCopyWindowSettings(src_name, dst_name) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_copy_window_settings(src_name, dst_name);
	} else {
		return undefined;
	}
}

/// @param {Real} node_id
/// @return {Undefined}
function ImGuiDockBuilderFinish(node_id) {
	if (IMGUI_ENABLED) {
		return __imgui_dockbuilder_finish(node_id);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiDragFloat(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_float(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat2(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_float2(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat3(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_float3(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloat4(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_float4(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloatN(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format_min=%.3f]
/// @param {String} [format_max=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragFloatRange2(label, v, v_speed=1, v_min=0, v_max=0, format_min="%.3f", format_max="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_float_range2(label, v, v_speed, v_min, v_max, format_min, format_max, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiDragInt(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_int(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt2(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_int2(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt3(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_int3(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragInt4(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_int4(label, v, v_speed, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragIntN(label, v, v_speed=1, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_intn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} v_current_max
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format_max=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiDragIntRange2(label, v, v_current_max, v_speed=1, v_min=0, v_max=0, format_max="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drag_int_range2(label, v, v_current_max, v_speed, v_min, v_max, format_max, flags);
	} else {
		return undefined;
	}
}

/// @param {Pointer} [viewport=undefined]
/// @return {Pointer}
function ImGuiGetBackgroundDrawList(viewport=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_get_background_drawlist(viewport);
	} else {
		return undefined;
	}
}

/// @param {Pointer} [viewport=undefined]
/// @return {Pointer}
function ImGuiGetForegroundDrawList(viewport=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_get_foreground_drawlist(viewport);
	} else {
		return undefined;
	}
}

/// @return {Pointer}
function ImGuiGetWindowDrawList() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_drawlist();
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddLine(list, x1, y1, x2, y2, col, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_line(list, x1, y1, x2, y2, col, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [rounding=0]
/// @param {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddRect(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_rect(list, x1, y1, x2, y2, col, rounding, flags, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} [rounding=0]
/// @param {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @return {Undefined}
function ImGuiDrawListAddRectFilled(list, x1, y1, x2, y2, col, rounding=0, flags=ImDrawFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_rect_filled(list, x1, y1, x2, y2, col, rounding, flags);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col1
/// @param {Real} col2
/// @param {Real} col3
/// @param {Real} col4
/// @return {Undefined}
function ImGuiDrawListAddRectFilledMultiColor(list, x1, y1, x2, y2, col1, col2, col3, col4) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_rect_filled_multicolor(list, x1, y1, x2, y2, col1, col2, col3, col4);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} col
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddQuad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_quad(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} col
/// @return {Undefined}
function ImGuiDrawListAddQuadFilled(list, x1, y1, x2, y2, x3, y3, x4, y4, col) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_quad_filled(list, x1, y1, x2, y2, x3, y3, x4, y4, col);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} col
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddTriangle(list, x1, y1, x2, y2, x3, y3, col, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_triangle(list, x1, y1, x2, y2, x3, y3, col, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} col
/// @return {Undefined}
function ImGuiDrawListAddTriangleFilled(list, x1, y1, x2, y2, x3, y3, col) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_triangle_filled(list, x1, y1, x2, y2, x3, y3, col);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddCircle(list, _x, _y, radius, col, num_segments=0, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_circle(list, _x, _y, radius, col, num_segments, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddCircleFilled(list, _x, _y, radius, col, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_circle_filled(list, _x, _y, radius, col, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListAddNgon(list, _x, _y, radius, col, num_segments=0, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_ngon(list, _x, _y, radius, col, num_segments, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} col
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddNgonFilled(list, _x, _y, radius, col, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_ngon_filled(list, _x, _y, radius, col, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {String} text
/// @param {Real} col
/// @return {Undefined}
function ImGuiDrawListAddText(list, _x, _y, text, col) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_text(list, _x, _y, text, col);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {String} text
/// @param {Real} col
/// @param {Pointer} font
/// @param {Real} font_size
/// @param {Real} [wrap_width=0]
/// @return {Undefined}
function ImGuiDrawListAddTextFont(list, _x, _y, text, col, font, font_size, wrap_width=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_text_font(list, _x, _y, text, col, font, font_size, wrap_width);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Array<Real>} positions
/// @param {Real} col
/// @param {Enum.ImDrawFlags} flags
/// @param {Real} thickness
/// @return {Undefined}
function ImGuiDrawListAddPolyline(list, positions, col, flags, thickness) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_polyline(list, positions, col, flags, thickness, array_length(positions));
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Array<Real>} positions
/// @param {Real} col
/// @return {Undefined}
function ImGuiDrawListAddConvexPolyFilled(list, positions, col) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_convex_poly_filled(list, positions, col, array_length(positions));
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} col
/// @param {Real} thickness
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddBezierCubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_bezier_cubic(list, x1, y1, x2, y2, x3, y3, x4, y4, col, thickness, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} col
/// @param {Real} thickness
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListAddBezierQuadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_bezier_quadratic(list, x1, y1, x2, y2, x3, y3, col, thickness, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} col
/// @return {Undefined}
function ImGuiDrawListPathFillConvex(list, col) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_fill_convex(list, col);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} col
/// @param {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @param {Real} [thickness=1]
/// @return {Undefined}
function ImGuiDrawListPathStroke(list, col, flags=ImDrawFlags.None, thickness=1) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_stroke(list, col, flags, thickness);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPathClear(list) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_clear(list);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function ImGuiDrawListPathLineTo(list, _x, _y) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_line_to(list, _x, _y);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function ImGuiDrawListPathLineToMergeDuplicate(list, _x, _y) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_line_to_merge_duplicate(list, _x, _y);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} a_min
/// @param {Real} a_max
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathArcTo(list, _x, _y, radius, a_min, a_max, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_arc_to(list, _x, _y, radius, a_min, a_max, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} _x
/// @param {Real} _y
/// @param {Real} radius
/// @param {Real} a_min_of_12
/// @param {Real} a_max_of_12
/// @return {Undefined}
function ImGuiDrawListPathArcToFast(list, _x, _y, radius, a_min_of_12, a_max_of_12) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_arc_to_fast(list, _x, _y, radius, a_min_of_12, a_max_of_12);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} x4
/// @param {Real} y4
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathBezierCubicCurveTo(list, x2, y2, x3, y3, x4, y4, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_bezier_cubic_curve_to(list, x2, y2, x3, y3, x4, y4, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} x3
/// @param {Real} y3
/// @param {Real} [num_segments=0]
/// @return {Undefined}
function ImGuiDrawListPathBezierQuadraticCurveTo(list, x2, y2, x3, y3, num_segments=0) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_bezier_quadratic_curve_to(list, x2, y2, x3, y3, num_segments);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} [rounding=0]
/// @param {Enum.ImDrawFlags} [flags=ImDrawFlags.None]
/// @return {Undefined}
function ImGuiDrawListPathRect(list, x1, y1, x2, y2, rounding=0, flags=ImDrawFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_path_rect(list, x1, y1, x2, y2, rounding, flags);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} [col=c_white]
/// @return {Undefined}
function ImGuiDrawListAddImage(list, sprite, subimg, x1, y1, x2, y2, col=c_white) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_image(list, sprite, subimg, x1, y1, x2, y2, col, sprite_get_uvs(sprite, subimg));
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} x1
/// @param {Real} y1
/// @param {Real} x2
/// @param {Real} y2
/// @param {Real} col
/// @param {Real} rounding
/// @param {Real} flags
/// @return {Undefined}
function ImGuiDrawListAddImageRounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_add_image_rounded(list, sprite, subimg, x1, y1, x2, y2, col, rounding, flags, sprite_get_uvs(sprite, subimg));
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} clip_min_x
/// @param {Real} clip_min_y
/// @param {Real} clip_max_x
/// @param {Real} clip_max_y
/// @param {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function ImGuiDrawListPushClipRect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_push_clip_rect(list, clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @return {Undefined}
function ImGuiDrawlistPushClipRectFullscreen(list) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_push_clip_rect_fullscreen(list);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPopClipRect(list) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_pop_clip_rect(list);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} sprite
/// @param {Real} subimg
/// @return {Undefined}
function ImGuiDrawListPushTextureID(list, sprite, subimg) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_push_textureid(list, sprite, subimg);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @return {Undefined}
function ImGuiDrawListPopTextureID(list) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_pop_textureid(list);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @return {Real}
function ImGuiDrawListFlagsGet(list) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_flags_get(list);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} flags
/// @return {Undefined}
function ImGuiDrawListFlagsSet(list, flags) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_flags_set(list, flags);
	} else {
		return undefined;
	}
}

/// @param {Pointer} list
/// @param {Real} flag
/// @return {Bool}
function ImGuiDrawListFlagToggle(list, flag) {
	if (IMGUI_ENABLED) {
		return __imgui_drawlist_flag_toggle(list, flag);
	} else {
		return undefined;
	}
}

/// @param {String} title
/// @param {Real} buffer
/// @param {Real} [offset=0]
/// @param {Real} [size=buffer_get_size???buffer???]
/// @return {Undefined}
function ImGuiMemoryEditorShowWindow(title, buffer, offset=0, size=buffer_get_size(buffer)) {
	if (IMGUI_ENABLED) {
		return __imgui_memory_editor_window(title, buffer, offset, size);
	} else {
		return undefined;
	}
}

/// @param {Real} buffer
/// @param {Real} [offset=0]
/// @param {Real} [size=buffer_get_size???buffer???]
/// @return {Undefined}
function ImGuiMemoryEditorDrawContents(buffer, offset=0, size=buffer_get_size(buffer)) {
	if (IMGUI_ENABLED) {
		return __imgui_memory_editor_contents(buffer, offset, size);
	} else {
		return undefined;
	}
}

/// @return {Pointer}
function ImGuiGetFont() {
	if (IMGUI_ENABLED) {
		return __imgui_get_font();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetFontSize() {
	if (IMGUI_ENABLED) {
		return __imgui_get_font_size();
	} else {
		return undefined;
	}
}

/// @param {Any} [_ptr=undefined]
/// @return {Undefined}
function ImGuiPushFont(_ptr=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_push_font(_ptr);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopFont() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_font();
	} else {
		return undefined;
	}
}

/// @param {String} file
/// @param {Real} size
/// @return {Pointer|Undefined}
function ImGuiAddFontFromFile(file, size) {
	if (IMGUI_ENABLED) {
		return __imgui_add_font_from_file(file, size);
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiAddFontDefault() {
	if (IMGUI_ENABLED) {
		return __imgui_add_font_default();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} val
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputText(label, val, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_text(label, val, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} val
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputTextMultiline(label, val, width=0, height=0, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_textmultiline(label, val, width, height, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} hint
/// @param {String} val
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {String}
function ImGuiInputTextWithHint(label, hint, val, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_textwithhint(label, hint, val, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputFloat(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_float(label, v, step, step_fast, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat2(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_float2(label, v, step, step_fast, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat3(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_float3(label, v, step, step_fast, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloat4(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_float4(label, v, step, step_fast, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputFloatN(label, v, step=0, step_fast=0, format="%.3f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_floatn(label, v, step, step_fast, format, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputInt(label, v, step=0, step_fast=0, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_int(label, v, step, step_fast, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt2(label, v, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_int2(label, v, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt3(label, v, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_int3(label, v, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputInt4(label, v, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_int4(label, v, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Bool}
function ImGuiInputIntN(label, v, flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_intn(label, v, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [step=0]
/// @param {Real} [step_fast=0]
/// @param {String} [format=%.6f]
/// @param {Enum.ImGuiInputTextFlags} [flags=ImGuiInputTextFlags.None]
/// @return {Real}
function ImGuiInputDouble(label, v, step=0, step_fast=0, format="%.6f", flags=ImGuiInputTextFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_input_double(label, v, step, step_fast, format, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiSpacing() {
	if (IMGUI_ENABLED) {
		return __imgui_spacing();
	} else {
		return undefined;
	}
}

/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function ImGuiDummy(width, height) {
	if (IMGUI_ENABLED) {
		return __imgui_dummy(width, height);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiNewLine() {
	if (IMGUI_ENABLED) {
		return __imgui_newline();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiAlignTextToFramePadding() {
	if (IMGUI_ENABLED) {
		return __imgui_align_text_to_frame_padding();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiSeparator() {
	if (IMGUI_ENABLED) {
		return __imgui_separator();
	} else {
		return undefined;
	}
}

/// @param {Real} [indent_w=0]
/// @return {Undefined}
function ImGuiIndent(indent_w=0) {
	if (IMGUI_ENABLED) {
		return __imgui_indent(indent_w);
	} else {
		return undefined;
	}
}

/// @param {Real} [indent_w=0]
/// @return {Undefined}
function ImGuiUnindent(indent_w=0) {
	if (IMGUI_ENABLED) {
		return __imgui_unindent(indent_w);
	} else {
		return undefined;
	}
}

/// @param {Real} [offset_from_start_x=0]
/// @param {Real} [spacing=-1]
/// @return {Undefined}
function ImGuiSameLine(offset_from_start_x=0, spacing=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_sameline(offset_from_start_x, spacing);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiBeginGroup() {
	if (IMGUI_ENABLED) {
		return __imgui_begin_group();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndGroup() {
	if (IMGUI_ENABLED) {
		return __imgui_end_group();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorPosX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_pos_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorPosY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_pos_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorStartPosX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_start_pos_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorStartPosY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_start_pos_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorScreenPosX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_screen_pos_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetCursorScreenPosY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_cursor_screen_pos_y();
	} else {
		return undefined;
	}
}

/// @param {Real} _x
/// @param {Real} _y
/// @return {Undefined}
function ImGuiSetCursorScreenPos(_x, _y) {
	if (IMGUI_ENABLED) {
		return __imgui_set_cursor_screen_pos(_x, _y);
	} else {
		return undefined;
	}
}

/// @param {Real} local_x
/// @param {Real} local_y
/// @return {Undefined}
function ImGuiSetCursorPos(local_x, local_y) {
	if (IMGUI_ENABLED) {
		return __imgui_set_cursor_pos(local_x, local_y);
	} else {
		return undefined;
	}
}

/// @param {Real} local_x
/// @return {Undefined}
function ImGuiSetCursorPosX(local_x) {
	if (IMGUI_ENABLED) {
		return __imgui_set_cursor_pos_x(local_x);
	} else {
		return undefined;
	}
}

/// @param {Real} local_y
/// @return {Undefined}
function ImGuiSetCursorPosY(local_y) {
	if (IMGUI_ENABLED) {
		return __imgui_set_cursor_pos_y(local_y);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetTextLineHeight() {
	if (IMGUI_ENABLED) {
		return __imgui_get_text_line_height();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetTextLineHeightWithSpacing() {
	if (IMGUI_ENABLED) {
		return __imgui_get_text_line_height_with_spacing();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetFrameHeight() {
	if (IMGUI_ENABLED) {
		return __imgui_get_frame_height();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetFrameHeightWithSpacing() {
	if (IMGUI_ENABLED) {
		return __imgui_get_frame_height_with_spacing();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetContentRegionAvailX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_content_region_avail_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetContentRegionAvailY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_content_region_avail_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetContentRegionMaxX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_content_region_max_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetContentRegionMaxY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_content_region_max_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowContentRegionMinX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_content_region_min_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowContentRegionMinY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_content_region_min_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowContentRegionMaxX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_content_region_max_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowContentRegionMaxY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_content_region_max_y();
	} else {
		return undefined;
	}
}

/// @param {Real} item_width
/// @return {Undefined}
function ImGuiPushItemWidth(item_width) {
	if (IMGUI_ENABLED) {
		return __imgui_push_item_width(item_width);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopItemWidth() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_item_width();
	} else {
		return undefined;
	}
}

/// @param {Real} item_width
/// @return {Undefined}
function ImGuiSetNextItemWidth(item_width) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_item_width(item_width);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiCalcItemWidth() {
	if (IMGUI_ENABLED) {
		return __imgui_calc_item_width();
	} else {
		return undefined;
	}
}

/// @param {Real} [wrap_local_pos_x=0]
/// @return {Undefined}
function ImGuiPushTextWrapPos(wrap_local_pos_x=0) {
	if (IMGUI_ENABLED) {
		return __imgui_push_text_wrap_pos(wrap_local_pos_x);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopTextWrapPos() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_text_wrap_pos();
	} else {
		return undefined;
	}
}

/// @param {Real} clip_min_x
/// @param {Real} clip_min_y
/// @param {Real} clip_max_x
/// @param {Real} clip_max_y
/// @param {Bool} intersect_with_current_clip_rect
/// @return {Undefined}
function ImGuiPushClipRect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect) {
	if (IMGUI_ENABLED) {
		return __imgui_push_clip_rect(clip_min_x, clip_min_y, clip_max_x, clip_max_y, intersect_with_current_clip_rect);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiPopClipRect() {
	if (IMGUI_ENABLED) {
		return __imgui_pop_clip_rect();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function ImGuiBeginListBox(label, width=0, height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_listbox(label, width, height);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndListBox() {
	if (IMGUI_ENABLED) {
		return __imgui_end_listbox();
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiListBox() {
	if (IMGUI_ENABLED) {
		return __imgui_listbox();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiBeginMenuBar() {
	if (IMGUI_ENABLED) {
		return __imgui_begin_menubar();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndMenuBar() {
	if (IMGUI_ENABLED) {
		return __imgui_end_menubar();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiBeginMainMenuBar() {
	if (IMGUI_ENABLED) {
		return __imgui_begin_mainmenubar();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndMainMenuBar() {
	if (IMGUI_ENABLED) {
		return __imgui_end_mainmenubar();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} [enabled=true]
/// @return {Bool}
function ImGuiBeginMenu(label, enabled=true) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_menu(label, enabled);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndMenu() {
	if (IMGUI_ENABLED) {
		return __imgui_end_menu();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} [shortcut=]
/// @param {Bool} [selected=undefined]
/// @param {Bool} [enabled=true]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiMenuItem(label, shortcut="", selected=undefined, enabled=true, mask=ImGuiReturnMask.Return) {
	if (IMGUI_ENABLED) {
		return __imgui_menu_item(label, shortcut, selected, enabled, mask);
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Bool}
function ImGuiBeginDragDropSource(flags=ImGuiDragDropFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_drag_drop_source(flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndDragDropSource() {
	if (IMGUI_ENABLED) {
		return __imgui_end_drag_drop_source();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiBeginDragDropTarget() {
	if (IMGUI_ENABLED) {
		return __imgui_begin_drag_drop_target();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndDragDropTarget() {
	if (IMGUI_ENABLED) {
		return __imgui_end_drag_drop_target();
	} else {
		return undefined;
	}
}

/// @param {String} type
/// @param {Any} data
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Bool}
function ImGuiSetDragDropPayload(type, data, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_drag_drop_payload(type, data, cond);
	} else {
		return undefined;
	}
}

/// @param {String} type
/// @param {Enum.ImGuiDragDropFlags} [flags=ImGuiDragDropFlags.None]
/// @return {Any|Undefined}
function ImGuiAcceptDragDropPayload(type, flags=ImGuiDragDropFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_accept_drag_drop_payload(type, flags);
	} else {
		return undefined;
	}
}

/// @return {Any|Undefined}
function ImGuiGetDragDropPayload() {
	if (IMGUI_ENABLED) {
		return __imgui_get_drag_drop_payload();
	} else {
		return undefined;
	}
}

/// @return {String|Undefined}
function ImGuiGetDragDropPayloadType() {
	if (IMGUI_ENABLED) {
		return __imgui_get_payload_type();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} values
/// @param {Real} [values_offset=0]
/// @param {String} [overlay_text=]
/// @param {Real} [scale_min=0]
/// @param {Real} [scale_max=0]
/// @param {Real} [graph_width=0]
/// @param {Real} [graph_height=0]
/// @return {Undefined}
function ImGuiPlotLines(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_plot_lines(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} values
/// @param {Real} [values_offset=0]
/// @param {String} [overlay_text=]
/// @param {Real} [scale_min=0]
/// @param {Real} [scale_max=0]
/// @param {Real} [graph_width=0]
/// @param {Real} [graph_height=0]
/// @return {Undefined}
function ImGuiPlotHistogram(label, values, values_offset=0, overlay_text="", scale_min=0, scale_max=0, graph_width=0, graph_height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_plot_histogram(label, values, values_offset, overlay_text, scale_min, scale_max, graph_width, graph_height, array_length(values));
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginPopup(str_id, flags=ImGuiWindowFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_popup(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} name
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBeginPopupModal(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_popup_modal(name, open, flags, mask);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndPopup() {
	if (IMGUI_ENABLED) {
		return __imgui_end_popup();
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Undefined}
function ImGuiOpenPopup(str_id, flags=ImGuiPopupFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_open_popup(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Undefined}
function ImGuiOpenPopupOnItemClick(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	if (IMGUI_ENABLED) {
		return __imgui_open_popup_on_item_click(str_id, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiCloseCurrentPopup() {
	if (IMGUI_ENABLED) {
		return __imgui_close_current_popup();
	} else {
		return undefined;
	}
}

/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextItem(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_popup_context_item(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextWindow(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_popup_context_window(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} [str_id=undefined]
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.MouseButtonRight]
/// @return {Bool}
function ImGuiBeginPopupContextVoid(str_id="undefined", flags=ImGuiPopupFlags.MouseButtonRight) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_popup_context_void(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Enum.ImGuiPopupFlags} [flags=ImGuiPopupFlags.None]
/// @return {Bool}
function ImGuiIsPopupOpen(str_id, flags=ImGuiPopupFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_is_popup_open(str_id, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} [selected=false]
/// @param {Enum.ImGuiSelectableFlags} [flags=ImGuiSelectableFlags.None]
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function ImGuiSelectable(label, selected=false, flags=ImGuiSelectableFlags.None, width=0, height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_selectable(label, selected, flags, width, height);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderFloat(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_float(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat2(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_float2(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat3(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_float3(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloat4(label, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_float4(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_speed=1]
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderFloatN(label, v, v_speed=1, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_floatn(label, v, v_speed, v_min, v_max, format, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderInt(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_int(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt2(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_int2(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt3(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_int3(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderInt4(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_int4(label, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Array<Real>} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Bool}
function ImGuiSliderIntN(label, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_intn(label, v, v_min, v_max, format, flags, array_length(v));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} width
/// @param {Real} height
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%.3f]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiVSliderFloat(label, width, height, v, v_min=0, v_max=0, format="%.3f", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_vslider_float(label, width, height, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} width
/// @param {Real} height
/// @param {Real} v
/// @param {Real} [v_min=0]
/// @param {Real} [v_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiVSliderInt(label, width, height, v, v_min=0, v_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_vslider_int(label, width, height, v, v_min, v_max, format, flags);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} v_rad
/// @param {Real} [v_degrees_min=0]
/// @param {Real} [v_degrees_max=0]
/// @param {String} [format=%d]
/// @param {Enum.ImGuiSliderFlags} [flags=ImGuiSliderFlags.None]
/// @return {Real}
function ImGuiSliderAngle(label, v_rad, v_degrees_min=0, v_degrees_max=0, format="%d", flags=ImGuiSliderFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_slider_angle(label, v_rad, v_degrees_min, v_degrees_max, format, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiStyleColorsDark() {
	if (IMGUI_ENABLED) {
		return __imgui_style_colors_dark();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiStyleColorsLight() {
	if (IMGUI_ENABLED) {
		return __imgui_style_colors_light();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiStyleColorsClassic() {
	if (IMGUI_ENABLED) {
		return __imgui_style_colors_classic();
	} else {
		return undefined;
	}
}

/// @param {Real} idx
/// @param {Real} col
/// @param {Real} alpha
/// @return {Undefined}
function ImGuiPushStyleColor(idx, col, alpha) {
	if (IMGUI_ENABLED) {
		return __imgui_push_style_color(idx, col, alpha);
	} else {
		return undefined;
	}
}

/// @param {Real} [count=1]
/// @return {Undefined}
function ImGuiPopStyleColor(count=1) {
	if (IMGUI_ENABLED) {
		return __imgui_pop_style_color(count);
	} else {
		return undefined;
	}
}

/// @param {Real} idx
/// @param {Real} val
/// @param {Any} [val2=undefined]
/// @return {Undefined}
function ImGuiPushStyleVar(idx, val, val2=undefined) {
	if (IMGUI_ENABLED) {
		return __imgui_push_style_var(idx, val, val2);
	} else {
		return undefined;
	}
}

/// @param {Real} [count=1]
/// @return {Undefined}
function ImGuiPopStyleVar(count=1) {
	if (IMGUI_ENABLED) {
		return __imgui_pop_style_var(count);
	} else {
		return undefined;
	}
}

/// @param {Real} idx
/// @return {Real}
function ImGuiGetStyleColor(idx) {
	if (IMGUI_ENABLED) {
		return __imgui_get_style_color(idx);
	} else {
		return undefined;
	}
}

/// @param {Real} idx
/// @return {String}
function ImGuiGetStyleColorName(idx) {
	if (IMGUI_ENABLED) {
		return __imgui_get_style_color_name(idx);
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Real} column
/// @param {Enum.ImGuiTableFlags} [flags=ImGuiTableFlags.None]
/// @param {Real} [outer_width=0]
/// @param {Real} [outer_height=0]
/// @param {Real} [inner_width=0]
/// @return {Bool}
function ImGuiBeginTable(str_id, column, flags=ImGuiTableFlags.None, outer_width=0, outer_height=0, inner_width=0) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_table(str_id, column, flags, outer_width, outer_height, inner_width);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndTable() {
	if (IMGUI_ENABLED) {
		return __imgui_end_table();
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiTableRowFlags} [row_flags=ImGuiTableRowFlags.None]
/// @param {Real} [min_row_height=0]
/// @return {Undefined}
function ImGuiTableNextRow(row_flags=ImGuiTableRowFlags.None, min_row_height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_table_next_row(row_flags, min_row_height);
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiTableNextColumn() {
	if (IMGUI_ENABLED) {
		return __imgui_table_next_column();
	} else {
		return undefined;
	}
}

/// @param {Real} column_n
/// @return {Bool}
function ImGuiTableSetColumnIndex(column_n) {
	if (IMGUI_ENABLED) {
		return __imgui_table_set_column_index(column_n);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Enum.ImGuiTableColumnFlags} [flags=ImGuiTableColumnFlags.None]
/// @param {Real} [user_id=0]
/// @return {Undefined}
function ImGuiTableSetupColumn(label, flags=ImGuiTableColumnFlags.None, user_id=0) {
	if (IMGUI_ENABLED) {
		return __imgui_table_setup_column(label, flags, user_id);
	} else {
		return undefined;
	}
}

/// @param {Real} cols
/// @param {Real} rows
/// @return {Undefined}
function ImGuiTableSetupScrollFreeze(cols, rows) {
	if (IMGUI_ENABLED) {
		return __imgui_table_setup_scroll_freeze(cols, rows);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiTableHeadersRow() {
	if (IMGUI_ENABLED) {
		return __imgui_table_headers_row();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @return {Undefined}
function ImGuiTableHeader(label) {
	if (IMGUI_ENABLED) {
		return __imgui_table_header(label);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiTableGetColumnCount() {
	if (IMGUI_ENABLED) {
		return __imgui_table_get_column_count();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiTableGetColumnIndex() {
	if (IMGUI_ENABLED) {
		return __imgui_table_get_column_index();
	} else {
		return undefined;
	}
}

/// @param {Real} [column_n=-1]
/// @return {String}
function ImGuiTableGetColumnName(column_n=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_table_get_column_name(column_n);
	} else {
		return undefined;
	}
}

/// @param {Real} [column_n=-1]
/// @return {Real}
function ImGuiTableGetColumnFlags(column_n=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_table_get_column_flags(column_n);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiTableGetRowIndex() {
	if (IMGUI_ENABLED) {
		return __imgui_table_get_row_index();
	} else {
		return undefined;
	}
}

/// @param {Real} column_n
/// @param {Bool} v
/// @return {Undefined}
function ImGuiTableSetColumnEnabled(column_n, v) {
	if (IMGUI_ENABLED) {
		return __imgui_table_set_column_enabled(column_n, v);
	} else {
		return undefined;
	}
}

/// @param {Real} target
/// @param {Real} col
/// @param {Real} [column_n=-1]
/// @return {Undefined}
function ImGuiTableSetBgColor(target, col, column_n=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_table_set_bg_color(target, col, column_n);
	} else {
		return undefined;
	}
}

/// @param {Real} [count=1]
/// @param {String} [_id=]
/// @param {Bool} [border=true]
/// @return {Undefined}
function ImGuiColumns(count=1, _id="", border=true) {
	if (IMGUI_ENABLED) {
		return __imgui_columns(count, _id, border);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiNextColumn() {
	if (IMGUI_ENABLED) {
		return __imgui_next_column();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetColumnIndex() {
	if (IMGUI_ENABLED) {
		return __imgui_get_column_index();
	} else {
		return undefined;
	}
}

/// @param {Real} [column_index=-1]
/// @return {Real}
function ImGuiGetColumnWidth(column_index=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_get_column_width(column_index);
	} else {
		return undefined;
	}
}

/// @param {Real} column_index
/// @param {Real} width
/// @return {Undefined}
function ImGuiSetColumnWidth(column_index, width) {
	if (IMGUI_ENABLED) {
		return __imgui_set_column_width(column_index, width);
	} else {
		return undefined;
	}
}

/// @param {Real} [column_index=-1]
/// @return {Real}
function ImGuiGetColumnOffset(column_index=-1) {
	if (IMGUI_ENABLED) {
		return __imgui_get_column_offset(column_index);
	} else {
		return undefined;
	}
}

/// @param {Real} column_index
/// @param {Real} offset_x
/// @return {Undefined}
function ImGuiSetColumnOffset(column_index, offset_x) {
	if (IMGUI_ENABLED) {
		return __imgui_set_column_offset(column_index, offset_x);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetColumnsCount() {
	if (IMGUI_ENABLED) {
		return __imgui_get_columns_count();
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Enum.ImGuiTabBarFlags} [flags=ImGuiTabBarFlags.None]
/// @return {Bool}
function ImGuiBeginTabBar(str_id, flags=ImGuiTabBarFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_tab_bar(str_id, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndTabBar() {
	if (IMGUI_ENABLED) {
		return __imgui_end_tab_bar();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBeginTabItem(label, open=undefined, flags=ImGuiTabItemFlags.None, mask=ImGuiReturnMask.Return) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_tab_item(label, open, flags, mask);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndTabItem() {
	if (IMGUI_ENABLED) {
		return __imgui_end_tab_item();
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Enum.ImGuiTabItemFlags} [flags=ImGuiTabItemFlags.None]
/// @return {Bool}
function ImGuiTabItemButton(label, flags=ImGuiTabItemFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_tab_item_button(label, flags);
	} else {
		return undefined;
	}
}

/// @param {String} tab_or_docked_window_label
/// @return {Undefined}
function ImGuiSetTabItemClosed(tab_or_docked_window_label) {
	if (IMGUI_ENABLED) {
		return __imgui_set_tab_item_closed(tab_or_docked_window_label);
	} else {
		return undefined;
	}
}

/// @param {String} text
/// @return {Undefined}
function ImGuiTextUnformatted(text) {
	if (IMGUI_ENABLED) {
		return __imgui_text_unformatted(text);
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @return {Undefined}
function ImGuiText(val) {
	if (IMGUI_ENABLED) {
		return __imgui_text(val);
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @param {Real} color
/// @param {Real} [alpha=1]
/// @return {Undefined}
function ImGuiTextColored(val, color, alpha=1) {
	if (IMGUI_ENABLED) {
		return __imgui_text_colored(val, color, alpha);
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @return {Undefined}
function ImGuiTextDisabled(val) {
	if (IMGUI_ENABLED) {
		return __imgui_text_disabled(val);
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @return {Undefined}
function ImGuiTextWrapped(val) {
	if (IMGUI_ENABLED) {
		return __imgui_text_wrapped(val);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {String} val
/// @return {Undefined}
function ImGuiLabelText(label, val) {
	if (IMGUI_ENABLED) {
		return __imgui_label_text(label, val);
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @return {Undefined}
function ImGuiBulletText(val) {
	if (IMGUI_ENABLED) {
		return __imgui_bullet_text(val);
	} else {
		return undefined;
	}
}

/// @return {Unknown<unset>}
function ImGuiValue() {
	if (IMGUI_ENABLED) {
		return __imgui_value();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiBeginTooltip() {
	if (IMGUI_ENABLED) {
		return __imgui_begin_tooltip();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndTooltip() {
	if (IMGUI_ENABLED) {
		return __imgui_end_tooltip();
	} else {
		return undefined;
	}
}

/// @param {String} val
/// @return {Undefined}
function ImGuiSetTooltip(val) {
	if (IMGUI_ENABLED) {
		return __imgui_set_tooltip(val);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @return {Bool}
function ImGuiTreeNode(label) {
	if (IMGUI_ENABLED) {
		return __imgui_tree_node(label);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @return {Bool}
function ImGuiTreeNodeEx(label, flags=ImGuiTreeNodeFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_tree_node_ex(label, flags);
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @return {Undefined}
function ImGuiTreePush(str_id) {
	if (IMGUI_ENABLED) {
		return __imgui_tree_push(str_id);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiTreePop() {
	if (IMGUI_ENABLED) {
		return __imgui_tree_pop();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetTreeNodeToLabelSpacing() {
	if (IMGUI_ENABLED) {
		return __imgui_get_tree_node_to_label_spacing();
	} else {
		return undefined;
	}
}

/// @param {Bool} is_open
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextItemOpen(is_open, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_item_open(is_open, cond);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} [_visible=undefined]
/// @param {Enum.ImGuiTreeNodeFlags} [flags=ImGuiTreeNodeFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiCollapsingHeader(label, _visible=undefined, flags=ImGuiTreeNodeFlags.None, mask=ImGuiReturnMask.Return) {
	if (IMGUI_ENABLED) {
		return __imgui_collapsing_header(label, _visible, flags, mask);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @return {Bool}
function ImGuiButton(label, width=0, height=0) {
	if (IMGUI_ENABLED) {
		return __imgui_button(label, width, height);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @return {Bool}
function ImGuiSmallButton(label) {
	if (IMGUI_ENABLED) {
		return __imgui_small_button(label);
	} else {
		return undefined;
	}
}

/// @param {String} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiButtonFlags} [flags=ImGuiButtonFlags.None]
/// @return {Bool}
function ImGuiInvisibleButton(_id, width=0, height=0, flags=ImGuiButtonFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_invisible_button(_id, width, height, flags);
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Real} dir
/// @return {Bool}
function ImGuiArrowButton(str_id, dir) {
	if (IMGUI_ENABLED) {
		return __imgui_arrow_button(str_id, dir);
	} else {
		return undefined;
	}
}

/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} [color=c_white]
/// @param {Real} [alpha=1]
/// @param {Real} [width=sprite_get_width???sprite???]
/// @param {Real} [height=sprite_get_height???sprite???]
/// @return {Undefined}
function ImGuiImage(sprite, subimg, color=c_white, alpha=1, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
	if (IMGUI_ENABLED) {
		return __imgui_image(sprite, subimg, color, alpha, width, height, sprite_get_uvs(sprite, subimg));
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Real} sprite
/// @param {Real} subimg
/// @param {Real} color
/// @param {Real} alpha
/// @param {Real} bg_color
/// @param {Real} bg_alpha
/// @param {Real} [width=sprite_get_width???sprite???]
/// @param {Real} [height=sprite_get_height???sprite???]
/// @return {Bool}
function ImGuiImageButton(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width=sprite_get_width(sprite), height=sprite_get_height(sprite)) {
	if (IMGUI_ENABLED) {
		return __imgui_image_button(str_id, sprite, subimg, color, alpha, bg_color, bg_alpha, width, height, sprite_get_uvs(sprite, subimg));
	} else {
		return undefined;
	}
}

/// @param {Real} surface
/// @param {Real} [color=c_white]
/// @param {Real} [alpha=1]
/// @param {Real} [width=surface_get_width???surface???]
/// @param {Real} [height=surface_get_height???surface???]
/// @return {Undefined}
function ImGuiSurface(surface, color=c_white, alpha=1, width=surface_get_width(surface), height=surface_get_height(surface)) {
	var _tex = surface_get_texture(surface); 
	if (IMGUI_ENABLED) {
		return __imgui_surface(surface, color, alpha, width, height, texture_get_uvs(_tex));
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} checked
/// @return {Bool}
function ImGuiCheckbox(label, checked) {
	if (IMGUI_ENABLED) {
		return __imgui_checkbox(label, checked);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Real} flags
/// @param {Real} flags_value
/// @return {Real}
function ImGuiCheckboxFlags(label, flags, flags_value) {
	if (IMGUI_ENABLED) {
		return __imgui_checkbox_flags(label, flags, flags_value);
	} else {
		return undefined;
	}
}

/// @param {String} label
/// @param {Bool} active
/// @return {Bool}
function ImGuiRadioButton(label, active) {
	if (IMGUI_ENABLED) {
		return __imgui_radio_button(label, active);
	} else {
		return undefined;
	}
}

/// @param {Real} _frac
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {String} [overlay=]
/// @return {Undefined}
function ImGuiProgressBar(_frac, width=0, height=0, overlay="") {
	if (IMGUI_ENABLED) {
		return __imgui_progressbar(_frac, width, height, overlay);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiBullet() {
	if (IMGUI_ENABLED) {
		return __imgui_bullet();
	} else {
		return undefined;
	}
}

/// @param {String} name
/// @param {Bool} [open=undefined]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @param {Enum.ImGuiReturnMask} [mask=ImGuiReturnMask.Return]
/// @return {Real}
function ImGuiBegin(name, open=undefined, flags=ImGuiWindowFlags.None, mask=ImGuiReturnMask.Return) {
	if (IMGUI_ENABLED) {
		return __imgui_begin(name, open, flags, mask);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEnd() {
	if (IMGUI_ENABLED) {
		return __imgui_end();
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndFrame() {
	if (IMGUI_ENABLED) {
		return __imgui_endframe();
	} else {
		return undefined;
	}
}

/// @param {String} str_id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiChildFlags} [child_flags=ImGuiChildFlags.None]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginChild(str_id, width=0, height=0, child_flags=ImGuiChildFlags.None, flags=ImGuiWindowFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_child(str_id, width, height, child_flags, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndChild() {
	if (IMGUI_ENABLED) {
		return __imgui_end_child();
	} else {
		return undefined;
	}
}

/// @param {Real} _id
/// @param {Real} [width=0]
/// @param {Real} [height=0]
/// @param {Enum.ImGuiWindowFlags} [flags=ImGuiWindowFlags.None]
/// @return {Bool}
function ImGuiBeginChildFrame(_id, width=0, height=0, flags=ImGuiWindowFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_begin_child_frame(_id, width, height, flags);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiEndChildFrame() {
	if (IMGUI_ENABLED) {
		return __imgui_end_child_frame();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsWindowAppearing() {
	if (IMGUI_ENABLED) {
		return __imgui_is_window_appearing();
	} else {
		return undefined;
	}
}

/// @return {Bool}
function ImGuiIsWindowCollapsed() {
	if (IMGUI_ENABLED) {
		return __imgui_is_window_collapsed();
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiFocusedFlags} [flags=ImGuiFocusedFlags.None]
/// @return {Bool}
function ImGuiIsWindowFocused(flags=ImGuiFocusedFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_is_window_focused(flags);
	} else {
		return undefined;
	}
}

/// @param {Enum.ImGuiHoveredFlags} [flags=ImGuiHoveredFlags.None]
/// @return {Bool}
function ImGuiIsWindowHovered(flags=ImGuiHoveredFlags.None) {
	if (IMGUI_ENABLED) {
		return __imgui_is_window_hovered(flags);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowDpiScale() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_dpi_scale();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowPosX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowPosY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_y();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowWidth() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_width();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetWindowHeight() {
	if (IMGUI_ENABLED) {
		return __imgui_get_window_height();
	} else {
		return undefined;
	}
}

/// @param {Real} _x
/// @param {Real} _y
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @param {Real} [pivot_x=0]
/// @param {Real} [pivot_y=0]
/// @return {Undefined}
function ImGuiSetNextWindowPos(_x, _y, cond=ImGuiCond.None, pivot_x=0, pivot_y=0) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_pos(_x, _y, cond, pivot_x, pivot_y);
	} else {
		return undefined;
	}
}

/// @param {Real} width
/// @param {Real} height
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowSize(width, height, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_size(width, height, cond);
	} else {
		return undefined;
	}
}

/// @param {Real} min_width
/// @param {Real} min_height
/// @param {Real} max_width
/// @param {Real} max_height
/// @return {Undefined}
function ImGuiSetNextWindowSizeConstraints(min_width, min_height, max_width, max_height) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_size_constraints(min_width, min_height, max_width, max_height);
	} else {
		return undefined;
	}
}

/// @param {Real} width
/// @param {Real} height
/// @return {Undefined}
function ImGuiSetNextWindowContentSize(width, height) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_content_size(width, height);
	} else {
		return undefined;
	}
}

/// @param {Bool} collapsed
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetNextWindowCollapsed(collapsed, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_collapsed(collapsed, cond);
	} else {
		return undefined;
	}
}

/// @return {Undefined}
function ImGuiSetNextWindowFocus() {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_focus();
	} else {
		return undefined;
	}
}

/// @param {Real} scroll_x
/// @param {Real} scroll_y
/// @return {Undefined}
function ImGuiSetNextWindowScroll(scroll_x, scroll_y) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_scroll(scroll_x, scroll_y);
	} else {
		return undefined;
	}
}

/// @param {Real} alpha
/// @return {Undefined}
function ImGuiSetNextWindowBgAlpha(alpha) {
	if (IMGUI_ENABLED) {
		return __imgui_set_next_window_bgalpha(alpha);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetScrollX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_scroll_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetScrollY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_scroll_y();
	} else {
		return undefined;
	}
}

/// @param {Real} scroll_x
/// @return {Undefined}
function ImGuiSetScrollX(scroll_x) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_x(scroll_x);
	} else {
		return undefined;
	}
}

/// @param {Real} scroll_y
/// @return {Undefined}
function ImGuiSetScrollY(scroll_y) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_y(scroll_y);
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetScrollMaxX() {
	if (IMGUI_ENABLED) {
		return __imgui_get_scroll_max_x();
	} else {
		return undefined;
	}
}

/// @return {Real}
function ImGuiGetScrollMaxY() {
	if (IMGUI_ENABLED) {
		return __imgui_get_scroll_max_y();
	} else {
		return undefined;
	}
}

/// @param {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollHereX(center_x_ratio=0.5) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_here_x(center_x_ratio);
	} else {
		return undefined;
	}
}

/// @param {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollHereY(center_y_ratio=0.5) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_here_y(center_y_ratio);
	} else {
		return undefined;
	}
}

/// @param {Real} local_x
/// @param {Real} [center_x_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollFromPosX(local_x, center_x_ratio=0.5) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_from_pos_x(local_x, center_x_ratio);
	} else {
		return undefined;
	}
}

/// @param {Real} local_y
/// @param {Real} [center_y_ratio=0.5]
/// @return {Undefined}
function ImGuiSetScrollFromPosY(local_y, center_y_ratio=0.5) {
	if (IMGUI_ENABLED) {
		return __imgui_set_scroll_from_pos_y(local_y, center_y_ratio);
	} else {
		return undefined;
	}
}

/// @param {Real} _x
/// @param {Real} _y
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowPos(_x, _y, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_window_pos(_x, _y, cond);
	} else {
		return undefined;
	}
}

/// @param {String} [name=]
/// @param {Real} width
/// @param {Real} height
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowSize(name="", width, height, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_window_size(name, width, height, cond);
	} else {
		return undefined;
	}
}

/// @param {String} [name=]
/// @param {Bool} collapsed
/// @param {Enum.ImGuiCond} [cond=ImGuiCond.None]
/// @return {Undefined}
function ImGuiSetWindowCollapsed(name="", collapsed, cond=ImGuiCond.None) {
	if (IMGUI_ENABLED) {
		return __imgui_set_window_collapsed(name, collapsed, cond);
	} else {
		return undefined;
	}
}

/// @param {String} [name=]
/// @return {Undefined}
function ImGuiSetWindowFocus(name="") {
	if (IMGUI_ENABLED) {
		return __imgui_set_window_focus(name);
	} else {
		return undefined;
	}
}