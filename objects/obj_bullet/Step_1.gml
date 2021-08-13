if(place_meeting(x, y, obj_shootableparent)) {
	with(instance_place(x, y, obj_shootableparent)) {
		hp--;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}

if(place_meeting(x, y, obj_wall)) instance_destroy();