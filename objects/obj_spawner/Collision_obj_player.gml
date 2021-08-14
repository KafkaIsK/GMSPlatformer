//Start waves
if(!triggered) {
	with(obj_door) closed = true;
	triggered = true;
	
	totalwaves = -1;
	for(var i =0; i < ds_list_size(waves); i++) {
		var thisentry = ds_list_find_value(waves, i);
		if(thisentry[_WAVE] > totalwaves) {
			totalwaves++;
			remaining[totalwaves] = 0;
		}
		remaining[totalwaves]++;
	}
}