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
	
	instance_destroy();
}