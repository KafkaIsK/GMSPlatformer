x = obj_player.x;
y = obj_player.y + 10;

if(!obj_player.controller) {
	image_angle = point_direction(x, y, mouse_x, mouse_y);
} else {
	var controllerh = gamepad_axis_value(0, gp_axisrh);
	var controllerv = gamepad_axis_value(0, gp_axisrv);
	if(abs(controllerh) > 0.2) || (abs(controllerv) > 0.2) {
		controllerangle = point_direction(0, 0, controllerh, controllerv);
	}
	image_angle = controllerangle;
}

//Shooting bullets
firingdelay -= 1;
recoil = max(0, recoil - 1);
if((mouse_check_button(mb_left)) || gamepad_button_check(0, gp_shoulderrb)) && (firingdelay < 0) {
	recoil = 4;
	firingdelay = 5;
	ScreenShake(2, 10);
	audio_sound_pitch(snd_shoot, choose(0.9, 1.0, 1.1));
	audio_play_sound(snd_shoot, 5, false);
	with(instance_create_layer(x, y, "Bullets", obj_bullet)) {
		spd = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
	with(obj_player) {
		gunkickx = lengthdir_x(1.5, other.image_angle - 180);
		gunkicky = lengthdir_y(1, other.image_angle - 180);
	}
}
x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if(image_angle > 90) && (image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}