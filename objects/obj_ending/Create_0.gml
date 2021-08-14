assetlayer = layer_get_id("TitleAssets")
gunsprite = layer_sprite_get_id(assetlayer, "gph_gun");

if(global.hasgun) && (global.kills >= 0) { 
	endtext[0] = "You escaped to freedom and slain " + string(global.kills) + " people.";
	endtext[1] = "Some were bad people who had guns."
	endtext[2] = "So it's probably a good thing that you killed them."
	endtext[3] = "Then again, you did kill some people who weren't shooting at you."
	endtext[4] = "I'm pretty sure some were kids aswell..."
	endtext[5] = "... well, oopie daisy. They would probably grow up to be bad too."
	endtext[6] = "Anyway you live a long life without any remorse."
	if(global.kills == 1) {
		endtext[0] = "And on this day, you escaped and killed one random guy.";
		endtext[1] = "I'm pretty sure he was a bad guy."
		endtext[2] = "Though he probably has a family that will miss him."
		endtext[3] = "I guess too bad for them.";
		endtext[4] = "He shouldn't have been walking so aggresively at you."
		endtext[5] = "So kinda his fault."
	} else if(global.kills == 0) {
		endtext[0] = "You escaped and found this sick gun!";
		endtext[1] = "You also managed to get past all the bad people without killing any.";
		endtext[2] = "Really? What you dont't like fun?";
		endtext[3] = "Not even one? You really played this game that way?";
		endtext[4] = "Well you escaped the park with the gun, and killed a bunch of people offscreen.";
		endtext[5] = "So in the end it didn't really matter. Many died."
	}
} else {
	layer_sprite_destroy(gunsprite);
	endtext[0] = "You escaped to freedom and had a wonderful walk in the park.";
	endtext[1] = "You followed the signs and didn't murder anyone!"
	endtext[2] = "You reported a discarded firearm to the local authorities and were\nthanked for assisting in an ongoing criminal investigation."
	endtext[3] = "The actions that you took inspired other monkeys to just wlak to freedom."
	endtext[4] = "And you became a leader in the monkey freedom movement."
	endtext[5] = "You live a long life and start a monkey family."
	endtext[6] = "I wonder what would have happened if you picked up the gun..."
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();