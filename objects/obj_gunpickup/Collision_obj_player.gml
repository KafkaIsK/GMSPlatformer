//Equip gun
global.hasgun = true;
instance_create_layer(obj_player.x, obj_player.y, "Gun", obj_gun);
instance_destroy();