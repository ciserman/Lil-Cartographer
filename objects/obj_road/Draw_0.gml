draw_self()
if(on_ui_layer){
	draw_text(x,y+sprite_get_height(sprite_index)-10,cost_gold)
	draw_text(x+16,y+sprite_get_height(sprite_index)-10,cost_stone)
	draw_text(x+32,y+sprite_get_height(sprite_index)-10,cost_wood)
}