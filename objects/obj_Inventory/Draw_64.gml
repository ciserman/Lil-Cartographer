draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the resource counters
var xx = x; 
var yy = y;

draw_text(xx, yy +  0, "Wood: "   + string(global.wood));
draw_text(xx, yy + 20, "Stone: "  + string(global.stone));
draw_text(xx, yy + 40, "Iron: "   + string(global.iron));
draw_text(xx, yy + 60, "Gold: "   + string(global.gold));
draw_text(xx, yy + 80, "Meat: "   + string(global.meat));
draw_text(xx, yy +100, "Copper: " + string(global.copper));
draw_text(xx, yy +120, "Magic: "  + string(global.magic));
draw_text(xx, yy +140, "Brick: "  + string(global.brick));
draw_text(xx, yy +160, "Water: "  + string(global.water));