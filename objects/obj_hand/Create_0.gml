global.hand = ds_list_create();
ds_list_add(global.hand, obj_road, obj_road, obj_road, obj_road, obj_road);

for(var i = 0; i < ds_list_size(global.hand); i += 1) {	
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
	
	instance_create_layer( obj_Hand.x + (i * 144), obj_Hand.y, "Instances", chosenRoad );
}

