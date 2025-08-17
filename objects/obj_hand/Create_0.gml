global.hand = ds_list_create();
global.old_hand = ds_list_create();
global.hand_size = 5;

for(var i = 0; i < global.hand_size; i += 1) {	
	chosenRoad = choose(obj_road_deadend_east,
						obj_road_deadend_west,
						obj_road_deadend_north,
						obj_road_deadend_south,
						obj_road_elbow_northeast,
						obj_road_elbow_northwest,
						obj_road_elbow_southeast,
						obj_road_elbow_southwest,
						obj_road_straight_eastwest,
						obj_road_straight_southnorth,
						obj_road_t_east,
						obj_road_t_north,
						obj_road_t_south,
						obj_road_t_west,
						obj_road_x);
	var tileInstance = createTileInstance(i, chosenRoad);	
	ds_list_add(global.hand, tileInstance);
	ds_list_add(global.old_hand, tileInstance);
}

function createTileInstance(handIndex, tile_object) {
	return instance_create_layer( obj_Hand.x + (handIndex * 144), obj_Hand.y, "Instances", tile_object );
}