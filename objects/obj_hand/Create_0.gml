global.hand = ds_list_create();
ds_list_add(global.hand, obj_tile, obj_tile, obj_tile, obj_tile, obj_tile);

for(var i = 0; i < ds_list_size(global.hand); i += 1) {	
	instance_create_layer( obj_hand.x + (i * 144), obj_hand.y, "Instances", obj_tile );
}

