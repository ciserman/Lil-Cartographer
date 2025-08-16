if (place_meeting(x, y, obj_FiveByFiveGrid)) {
    var coords = get_grid_coords(x, y);
    var gx = coords[0];
    var gy = coords[1];

    if (gx >= 0 && gx < obj_FiveByFiveGrid.grid_size &&
        gy >= 0 && gy < obj_FiveByFiveGrid.grid_size) {

		var existing_tile = ds_grid_get(global.tile_grid, gx, gy);

		if (existing_tile == undefined || instance_exists(existing_tile) && existing_tile.object_index != obj_tile) {
            placed = true;

            var cell_w = obj_FiveByFiveGrid.sprite_width / obj_FiveByFiveGrid.grid_size;
            var cell_h = obj_FiveByFiveGrid.sprite_height / obj_FiveByFiveGrid.grid_size;

            x = obj_FiveByFiveGrid.x + gx * cell_w + cell_w/2;
            y = obj_FiveByFiveGrid.y + gy * cell_h + cell_h/2;

            ds_grid_set(global.tile_grid, gx, gy, id);

            grid_x = gx;
            grid_y = gy;
        }
        else if (!placed) {
			resetToHand();
        }
    } else {
		resetToHand();
	}
}
else {
	resetToHand()
}

function resetToHand() {
    x = starting_x;
    y = starting_y;
    placed = false;
}