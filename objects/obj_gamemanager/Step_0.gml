if (room == rm_init){
	if(keyboard_check_pressed(ord("P"))){
		global.game_paused = !global.game_paused;
		if(global.game_paused == false){
			instance_activate_all();
			surface_free(paused_surface);
			paused_surface = -1;
			make_menu_invisible();
		}
	}
	
	if(global.game_paused = true){
	}
}