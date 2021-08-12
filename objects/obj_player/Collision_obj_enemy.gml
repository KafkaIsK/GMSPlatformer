with(obj_gun) instance_destroy();
instance_change(obj_playerdead, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 2;
if(sign(hsp) != 0) image_xscale = sign(hsp);

with(instance_create_layer(x, y, layer, obj_gundead)) {
	hsp = lengthdir_x(3, other.direction);
	vsp = lengthdir_y(3, other.direction) - 2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
}