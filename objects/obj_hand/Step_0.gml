if (ds_list_size(global.hand) != ds_list_size(global.old_hand)) {
	var temporary_hand = ds_list_create();
	for(var i = 0; i < ds_list_size(global.hand); i += 1) {
		var tileInstanceFromHand = ds_list_find_value(global.hand, i);
		var tileInstance = createTileInstance(i, tileInstanceFromHand.object_index);
		ds_list_add(temporary_hand,tileInstance);
	}

	
	if (ds_list_size(global.old_hand) > 0) {
		for(var i = 0; i < ds_list_size(global.old_hand); i += 1) {
			var tile = ds_list_find_value(global.old_hand, i);
			if (!tile.placed) {
				instance_destroy(tile);
			}
		}
	}
	
	ds_list_clear(global.hand);
	ds_list_clear(global.old_hand);
	for(var i = 0; i < ds_list_size(temporary_hand); i += 1) {
		var newTileInstance = ds_list_find_value(temporary_hand, i);
		ds_list_add(global.hand, newTileInstance);
		ds_list_add(global.old_hand, newTileInstance);
	}
}