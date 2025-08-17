placed = false;
starting_x = x;
starting_y = y;
grid_x = undefined;
grid_y = undefined;

if(!on_ui_layer)	{
depth = -10;
}

north = false;
east = false;
south = false;
west = false;
tile_type="road";

neighborsList = ds_list_create();