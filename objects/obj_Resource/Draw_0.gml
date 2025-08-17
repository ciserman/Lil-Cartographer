draw_self();
for (var i = 0; i < resource_yield; ++i) {
	var locx = 0;
	var locy = 0;
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