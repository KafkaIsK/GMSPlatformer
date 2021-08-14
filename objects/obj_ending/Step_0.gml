//Move player towards centre
layer_x(assetlayer, min(layer_get_x(assetlayer) + 1, gui_width / 2 - 32));

//Progress text
letters += spd;
text = string_copy(endtext[currentline], 1, floor(letters));

//Next line
if(letters >= length) && (keyboard_check_pressed(vk_anykey)) {
	if(currentline + 1 == array_length_1d(endtext)) {
		SlideTransition(TRANS_MODE.EXIT)
	} else {
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}