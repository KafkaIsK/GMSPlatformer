if(instance_exists(obj_spawner)) {
	with(obj_spawner) {
		if(triggered) {
			remaining[currentwave]--;
		}
	}
}