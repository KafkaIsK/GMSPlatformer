if(falls) {
	vsp += grv;
	if (place_meeting(x,  y + vsp, obj_wall)) {
		while(!place_meeting(x, y + sign(vsp), obj_wall)) {
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}