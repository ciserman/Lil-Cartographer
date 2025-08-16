draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Draw the resource counters
var xx = x + sprite_width + 20; 
var yy = y;

draw_text(xx, yy +  0, "Wood: "   + string(wood));
draw_text(xx, yy + 20, "Stone: "  + string(stone));
draw_text(xx, yy + 40, "Iron: "   + string(iron));
draw_text(xx, yy + 60, "Gold: "   + string(gold));
draw_text(xx, yy + 80, "Meat: "   + string(meat));
draw_text(xx, yy +100, "Copper: " + string(copper));
draw_text(xx, yy +120, "Magic: "  + string(magic));
draw_text(xx, yy +140, "Brick: "  + string(brick));
draw_text(xx, yy +160, "Water: "  + string(water));