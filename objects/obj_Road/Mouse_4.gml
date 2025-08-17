if(on_ui_layer)	{
	if(	cost_gold<=global.gold &&
		cost_stone<=global.stone &&
		cost_wood<=global.wood)	{
			global.gold -= cost_gold;
			global.stone -= cost_stone;
			global.wood -= cost_wood;
			if (ds_list_size(global.hand) < global.hand_size) {
				ds_list_add(global.hand, id);
			}
		}
}