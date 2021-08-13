if(room != RoomMenu) && (instance_exists(obj_player)) && (global.kills > 0) {
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black, fnt_menu, fa_right, fa_top);
	draw_text_transformed(gui_width - 8, 12, string(global.kills) + " Epic Murders", killtextscale, killtextscale, 0);
	draw_set_color(c_white);
	draw_text_transformed(gui_width - 10, 10, string(global.kills) + " Epic Murders", killtextscale, killtextscale, 0);

}