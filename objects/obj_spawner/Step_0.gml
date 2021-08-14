//Spawn enemies
if(triggered) {
	//Check list for enemies that are ready to spawn
	for(var i = 0; i < ds_list_size(waves); i++) {
		var next = ds_list_find_value(waves, i);
		if(next[_WAVE] == currentwave) && (next[_DELAY] == timer) {
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Enemy", next[_TYPE]);
		}
	}
	timer++;
	
	//Next wave or end spawner
	if(remaining[currentwave] <= 0) {
		if(currentwave == totalwaves) {
			with(obj_door) closed = false;
			instance_destroy();
		} else {
			currentwave++;
			timer = 0;
		}
	}
}