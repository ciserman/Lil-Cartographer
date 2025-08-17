draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the resource counters
var xx = x; 
var yy = y;

var icon_space = 16;

draw_sprite(spr_cost_wood_icon, 0, xx - icon_space, yy);
draw_text(xx, yy +  0, "Wood: "   + string(global.wood));

draw_sprite(spr_cost_stone_icon, 0, xx - icon_space, yy + 20);
draw_text(xx, yy + 20, "Stone: "  + string(global.stone));

draw_sprite(spr_cost_gold_icon, 0, xx - icon_space, yy + 40);
draw_text(xx, yy + 40, "Gold: "   + string(global.gold));

//draw_text(xx, yy + 60, "Iron: "   + string(global.iron));
//draw_text(xx, yy + 80, "Meat: "   + string(global.meat));
//draw_text(xx, yy +100, "Copper: " + string(global.copper));
//draw_text(xx, yy +120, "Magic: "  + string(global.magic));
//draw_text(xx, yy +140, "Brick: "  + string(global.brick));
//draw_text(xx, yy +160, "Water: "  + string(global.water));