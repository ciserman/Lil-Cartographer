if(on_ui_layer)	{
	if (ds_list_size(global.hand) < global.hand_size) {
		ds_list_add(global.hand, index);
	}
} else if ( !placed && global.held_object == noone) {
		global.held_object = id;
}