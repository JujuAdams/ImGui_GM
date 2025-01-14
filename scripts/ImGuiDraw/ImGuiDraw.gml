function ImGuiDraw()
{
	static _system = __ImGuiSystem();
	with(_system)
	{
		__imgui_render();
		
		buffer_seek(__CmdBuffer, buffer_seek_start, 0);
		if (buffer_read(__CmdBuffer, buffer_bool)) { // data->Valid
			shader_set(__shdImGui);
			surface_set_target(__Surface);
			gpu_set_blendmode_ext(bm_one, bm_inv_src_alpha);
			draw_clear_alpha(0, 0);
			var list_count = buffer_read(__CmdBuffer, buffer_u32);
			for(var i = 0; i < list_count; i++) {
				var cmd_count = buffer_read(__CmdBuffer, buffer_u32);
				for(var j = 0; j < cmd_count; j++) {
					if (!buffer_read(__CmdBuffer, buffer_bool)) { // UserCallback != nullptr
						var tex_data = buffer_read(__CmdBuffer, buffer_u32);
						var tex_id = -1;
						switch (tex_data & 0xF) {
							case ImGuiTextureType.Surface: {
								tex_id = surface_get_texture(tex_data >> 4);
								break;
							}
								
							case ImGuiTextureType.Font: {
								tex_id = sprite_get_texture(__Font, 0);
								break;	
							}
								
							case ImGuiTextureType.Sprite: {
								tex_id = sprite_get_texture((tex_data >> 4) & 0xFF, tex_data >> 12);
								break;	
							}
						}
						
						var clip_x1 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_y1 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_x2 = buffer_read(__CmdBuffer, buffer_f32);
						var clip_y2 = buffer_read(__CmdBuffer, buffer_f32);
						shader_set_uniform_f_array(__Uniform, [clip_x1, clip_y1, clip_x2, clip_y2]);
						var vtx_count = buffer_read(__CmdBuffer, buffer_u32);
						var vtx_buff = vertex_create_buffer_from_buffer_ext(__CmdBuffer, __VtxFormat, buffer_tell(__CmdBuffer), vtx_count);
						vertex_submit(vtx_buff, pr_trianglelist, tex_id);
						buffer_seek(__CmdBuffer, buffer_seek_relative, 20 * vtx_count);
						vertex_delete_buffer(vtx_buff);
					}
				}
			}
			surface_reset_target();
			shader_reset();
			gpu_set_blendmode(bm_normal);
			
			var _w = display_get_gui_width(), _h = display_get_gui_height();
			display_set_gui_size(window_get_width(), window_get_height());
			display_set_gui_maximize(__Scale, __Scale, 0, 0);
			draw_surface(__Surface, 0, 0);
			display_set_gui_maximize();
			display_set_gui_size(_w, _h);
		}
	}
}