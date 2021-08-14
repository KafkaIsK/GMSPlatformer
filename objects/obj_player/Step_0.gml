//Player input
if(hascontrol) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	if(key_left) || (key_right) || (key_jump) {
		controller = false;
	}
	if(abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = true;
	}
	if(gamepad_button_check_pressed(0, gp_face1)) {
		key_jump = 1;
		controller = true;
	}
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//Calculate movement
var move = key_right - key_left;
hsp = (move * walksp) + gunkickx;
gunkickx = 0;
vsp += grv + gunkicky;
gunkicky = 0;
canjump--;
if(canjump > 0) && (key_jump) {
	vsp = -7;
	canjump = 0;
}

//Horizontal collision
if(place_meeting(x + hsp, y, obj_wall)) {
	while(!place_meeting(x + sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collision
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

//Animation
var aimside = sign(mouse_x - x);
if(aimside != 0) image_xscale = aimside;

if(!place_meeting(x, y + 1, obj_wall)) {
	sprite_index = spr_playerair;
	image_speed = 0;
	if(sign(vsp) > 0) image_index = 1; else image_index = 0;
} else {
	canjump = 10;
	if(sprite_index == spr_playerair) {
		audio_sound_pitch(snd_landing, choose(0.8, 1.0, 1.2));
		audio_play_sound(snd_landing, 4, false);
		repeat(5) {
			with(instance_create_layer(x, bbox_bottom, "Bullets", obj_dust)) {
				vsp = 0;
			}
		}
	}
	image_speed = 1;
	if(hsp == 0) {
		sprite_index = spr_player;
	} else {
		sprite_index = spr_playerrunning;
		if(aimside != sign(hsp)) sprite_index = spr_playerstrafing;
		
		runningdust--;
		if(runningdust <= 0) {
			repeat(2) {
				instance_create_layer(x, bbox_bottom, "Bullets", obj_dust)
			}
			runningdust = 20;
		}
		
	}
}
