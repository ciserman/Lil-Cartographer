var northNeighbor;
var southNeighbor;
var eastNeighbor;
var westNeighbor;

if (place_meeting(x, y, obj_FiveByFiveGrid)) {
    var coords = get_grid_coords(x + obj_road.sprite_width/2, y + obj_road.sprite_height/2);
    var gx = coords[0];
    var gy = coords[1];

    if (gx >= 0 && gx < obj_FiveByFiveGrid.grid_size &&
        gy >= 0 && gy < obj_FiveByFiveGrid.grid_size) {

		var existing_tile = ds_grid_get(global.tile_grid, gx, gy);
		
		northNeighbor = ds_grid_get(global.tile_grid, gx, gy-1);
		southNeighbor = ds_grid_get(global.tile_grid, gx, gy+1);
		eastNeighbor = ds_grid_get(global.tile_grid, gx+1, gy);
		westNeighbor = ds_grid_get(global.tile_grid, gx-1, gy);
		
		ds_list_add(neighborsList, northNeighbor,southNeighbor,eastNeighbor,westNeighbor);
		var neighborCheck = checkNeighborRoads(gx, gy, neighborsList);

		if (existing_tile == undefined
			|| instance_exists(existing_tile) 
			&& existing_tile.object_index != obj_road 
			&& neighborCheck) {
            placed = true;

            var cell_w = obj_FiveByFiveGrid.sprite_width / obj_FiveByFiveGrid.grid_size;
            var cell_h = obj_FiveByFiveGrid.sprite_height / obj_FiveByFiveGrid.grid_size;

            x = obj_FiveByFiveGrid.x + gx * cell_w;
            y = obj_FiveByFiveGrid.y + gy * cell_h;

            ds_grid_set(global.tile_grid, gx, gy, id);

            grid_x = gx;
            grid_y = gy;
			
			with (obj_FiveByFiveGrid) {
		        switch (existing_tile.tile_type) {
		            case "wood":  wood  += 1; break;
		            case "stone": stone += 1; break;
		            case "iron":  iron  += 1; break;
		            case "gold":  gold  += 1; break;
		            case "meat":  meat  += 1; break;
		            case "copper": copper += 1; break;
		            case "magic":  magic  += 1; break;
		            case "brick":  brick  += 1; break;
		            case "water":  water  += 1; break;
					case "road": break;
		        }
		    }

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

if (id == global.held_object) {
    global.held_object = noone;
}

function checkNeighborRoads(gx,gy, neighborsList){
	var valid = true;
	var hasAMatchingRoad = false;
		
	if gy != 0 {
		var northNeighbor = ds_list_find_value(neighborsList,0);
		if (northNeighbor.object_index.tile_type == "road" ){
			if (!(northNeighbor.south == north)) {
				valid = false;
			}
			
			if (northNeighbor.south && north) {
				hasAMatchingRoad = true;
			}
		}
	}
	if gy != obj_FiveByFiveGrid.grid_size-1 {
		var southNeighbor = ds_list_find_value(neighborsList,1);
		if (southNeighbor.object_index.tile_type == "road" ){
			if (!(southNeighbor.north == south)) {
				valid = false;
			}
			
			if (southNeighbor.north && south) {
				hasAMatchingRoad = true;
			}
		}
	}
	if  gx != obj_FiveByFiveGrid.grid_size-1{
		var eastNeighbor = ds_list_find_value(neighborsList,2);
		if (eastNeighbor.object_index.tile_type == "road" ){
			if (!(eastNeighbor.west == east)) {
				valid = false;
			}
			
			if (eastNeighbor.west && east) {
				hasAMatchingRoad = true;
			}
		}
	}
	if gx != 0 {
		var westNeighbor = ds_list_find_value(neighborsList,3);
		if (westNeighbor.object_index.tile_type == "road" ){
			if (!(westNeighbor.east == west)) {
				valid = false;
			}
			
			if (westNeighbor.east && west) {
				hasAMatchingRoad = true;
			}
		}
	}
	return valid && hasAMatchingRoad;
}

ds_list_clear(neighborsList);