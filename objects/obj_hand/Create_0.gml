global.hand = ds_list_create();
ds_list_add(global.hand, obj_Road, obj_Road, obj_Road, obj_Road, obj_Road);

for(var i = 0; i < ds_list_size(global.hand); i += 1) {	
	instance_create_layer( obj_Hand.x + (i * 144), obj_Hand.y, "Instances", obj_Road );
}

