// This randomises our seed to make sure the
// puzzle is different every time
randomize();

wood = 0;
stone = 0;
iron = 0;
gold = 0;
meat = 0;
copper = 0;
magic = 0;
brick = 0;
water = 0;

_particle = part_system_create();

global.move_list = ds_list_create();

global.current_move = 0;

global.won = false;
global.tile_height = 128;
global.tile_width = 128;

grid_size = 5;
global.tile_grid = ds_grid_create(grid_size, grid_size);

ds_grid_clear(global.tile_grid, undefined);

tile_types = ds_list_create()
ds_list_add(tile_types,obj_Gold,obj_Stone,obj_Wood)

// We loop for as many times as there are tiles
// in the puzzle
for(var _i = 0; _i < ((grid_size*grid_size) ); _i += 1) {
	// We create the tile
	var current_tile = ds_list_find_value(tile_types,random_range(0,3));
	var _tile = instance_create_layer(x, y, "Instances", current_tile);
	
	
	var _grid_x = _i % grid_size;
	var _grid_y = floor(_i / grid_size);

	// Multiplying the sprite width by the grid position gives
	// us the x screen position of the tile.
	var _tile_x = _tile.sprite_width * _grid_x;

	// Multiplying the sprite height by the grid position gives
	// us the y screen position of the tile.
	var tile_y = _tile.sprite_height * _grid_y;

	with(_tile) {
		x += _tile_x;
		y += tile_y;
	}

	ds_grid_set(global.tile_grid, _grid_x, _grid_y, _tile);

	with(_tile) {
		grid_x = _grid_x;
		grid_y = _grid_y;
	}
}


createTileAt(2,4,obj_road_x)

function createTileAt(x_cord,y_cord, obj_create){
	var old_tile_instance = ds_grid_get(global.tile_grid, x_cord, y_cord);
	if (instance_exists(old_tile_instance)) {
		instance_destroy(old_tile_instance);
	}
	var screen_x = x + x_cord * global.tile_width;
	var screen_y = y + y_cord * global.tile_height;
	
	var new_tile = instance_create_layer(screen_x,screen_y, "Instances", obj_create);
	
	ds_grid_set(global.tile_grid, x_cord, y_cord, new_tile);
	
	with (new_tile)	{
		grid_x = x_cord;
		grid_y = y_cord;
	}
}