function get_grid_coords(_x, _y) {
    var cell_w = obj_FiveByFiveGrid.sprite_width / obj_FiveByFiveGrid.grid_size;
    var cell_h = obj_FiveByFiveGrid.sprite_height / obj_FiveByFiveGrid.grid_size;

    var gx = floor((_x - obj_FiveByFiveGrid.x) / cell_w);
    var gy = floor((_y - obj_FiveByFiveGrid.y) / cell_h);

    return [gx, gy];
}