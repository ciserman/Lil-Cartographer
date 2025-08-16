if(place_meeting(x+obj_tile.sprite_width/2,y+obj_tile.sprite_height/2,obj_FiveByFiveGrid)){
	placed = true;
	x = x - (x % (obj_FiveByFiveGrid.sprite_width / 5))+obj_tile.sprite_width/2;
	y = y - (y % (obj_FiveByFiveGrid.sprite_height / 5))+obj_tile.sprite_height/2;
}
else	{
	x = starting_x;
	y = starting_y;
	placed = false;
}