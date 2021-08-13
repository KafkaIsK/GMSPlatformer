if(hasweapon) {
	mygun = instance_create_layer(x, y, "Gun", obj_enemygun);
	with(mygun) {
		owner = other.id;
	}
} else {
	mygun = noone;
}