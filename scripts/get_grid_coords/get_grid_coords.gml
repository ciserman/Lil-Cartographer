function get_grid_coords(_x, _y) {
    var cell_w = obj_SevenBySevenGrid.sprite_width / obj_SevenBySevenGrid.grid_size;
    var cell_h = obj_SevenBySevenGrid.sprite_height / obj_SevenBySevenGrid.grid_size;

    var gx = floor((_x - obj_SevenBySevenGrid.x) / cell_w);
    var gy = floor((_y - obj_SevenBySevenGrid.y) / cell_h);

    return [gx, gy];
}