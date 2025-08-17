draw_self();
draw_text(x+5,y+5,resource_yield);
for (var i = 0; i < resource_yield; ++i) {
	var locx;
	var locy;
	switch (i) {
	    case 0: locx = 0;
				locy = 0;
				break;
	    case 1: locx = 1;
				locy = 0;
				break;
	    case 2: locx = 0;
				locy = 1;
				break;

	    default: break;
	}
 
	draw_sprite(spr_resource,0,x+locx*sprite_get_width(spr_resource),y+locy*sprite_get_width(spr_resource))
}