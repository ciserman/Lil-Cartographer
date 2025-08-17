draw_self()
if(on_ui_layer){
	draw_text(x,y+sprite_get_height(sprite_index)-10,cost_gold)
	draw_sprite(spr_cost_gold_icon, 0, x+5,y+sprite_get_height(sprite_index)-10)
	
	draw_text(x+24,y+sprite_get_height(sprite_index)-10,cost_stone)
	draw_sprite(spr_cost_stone_icon, 0, x+32,y+sprite_get_height(sprite_index)-10)

	draw_text(x+48,y+sprite_get_height(sprite_index)-10,cost_wood)
	draw_sprite(spr_cost_wood_icon, 0, x+56,y+sprite_get_height(sprite_index)-10)
}