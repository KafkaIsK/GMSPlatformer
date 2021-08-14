draw_set_color(c_black);
draw_rectangle(0, 0, gui_width, 128, false);
draw_rectangle(0, gui_height - 128, gui_width, gui_height, false);

DrawSetText(c_black, fnt_menu, fa_center, fa_top);
draw_text(gui_width * 0.5 + 2, gui_width * 0.3 + 2, text);
draw_set_color(c_white);
draw_text(gui_width * 0.5, gui_width * 0.3, text);