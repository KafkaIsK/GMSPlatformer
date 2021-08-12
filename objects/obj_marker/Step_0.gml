if (instance_exists(obj_player)) && (point_in_circle(obj_player.x, obj_player.y, x, y, 224)) {
	image_alpha = min(1, image_alpha + 0.05);
}
if (image_alpha > 0) && (instance_exists(obj_player)) &&  (!point_in_circle(obj_player.x, obj_player.y, x, y, 224)) {
	image_alpha -= 0.05;
}