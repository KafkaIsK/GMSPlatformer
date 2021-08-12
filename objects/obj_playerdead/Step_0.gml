if(done == 0) {
	vsp += grv;

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
		if(vsp > 0) {
			done = 1;
			image_index = 1;
			alarm[0] = 60;
		}
		while(!place_meeting(x, y + sign(vsp), obj_wall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}