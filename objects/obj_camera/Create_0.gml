cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

mountains_layer = layer_get_id("Mountains");
trees_layer = layer_get_id("Trees");