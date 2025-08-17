if (place_meeting(x, y, obj_FiveByFiveGrid)) {
    var coords = get_grid_coords(x + obj_road.sprite_width/2, y + obj_road.sprite_height/2);
    var gx = coords[0];
    var gy = coords[1];

    if (gx >= 0 && gx < obj_FiveByFiveGrid.grid_size &&
        gy >= 0 && gy < obj_FiveByFiveGrid.grid_size) {

		var existing_tile = ds_grid_get(global.tile_grid, gx, gy);
		
		neighborCheck = checkNeighborRoads(gx, gy)

		if (existing_tile == undefined || instance_exists(existing_tile) && existing_tile.object_index != obj_road && neighborCheck) {
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


function checkNeighborRoads(gx,gy){
	
		canConnectNorth = true;
		canConnectSouth = true;
		canConnectEast = true;
		canConnectWest = true;
		
	if gy != 0 {
		northNeighbor = ds_grid_get(global.tile_grid, gx, gy-1);
		if (northNeighbor.object_index.tile_type == "road" ){
			canConnectNorth = northNeighbor.south && north;
		}
	}
	if gy != obj_FiveByFiveGrid.grid_size-1 {
		southNeighbor = ds_grid_get(global.tile_grid, gx, gy+1)
		if (southNeighbor.object_index.tile_type == "road" ){
			canConnectSouth = southNeighbor.north && south;
		}
	}
	if  gx != obj_FiveByFiveGrid.grid_size-1{
		eastNeighbor = ds_grid_get(global.tile_grid, gx+1, gy)
		if (eastNeighbor.object_index.tile_type == "road" ){
			canConnectEast = eastNeighbor.west && east;
		}
	}
	if gx != 0 {
		westNeighbor = ds_grid_get(global.tile_grid, gx-1, gy)
		if (westNeighbor.object_index.tile_type == "road" ){
			canConnectWest= westNeighbor.east && west;
		}
	}
	return canConnectNorth || canConnectSouth || canConnectEast || canConnectWest
}