if(hp <= 0) {
	audio_sound_pitch(snd_death, 1 / (size / 2 ));
	audio_play_sound(snd_death, 10, false);
	
	with(instance_create_layer(x, y, layer, obj_enemydead)) {
		direction = other.hitfrom;
		hsp = lengthdir_x(3, direction);
		vsp = lengthdir_y(3, direction) - 2;
		if(sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
	}
	
	with(mygun) {
		instance_destroy();
		direction = other.hitfrom
		with(instance_create_layer(x, y, layer, obj_gundead)) {
			image_xscale = abs(other.image_xscale);
			image_yscale = abs(other.image_yscale);
			hsp = lengthdir_x(3, other.direction);
			vsp = lengthdir_y(3, other.direction) - 2;
			if (sign(hsp) != 0) image_xscale = sign(hsp);
		}
	}
	instance_destroy();
}