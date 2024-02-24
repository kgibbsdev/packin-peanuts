function instance_create(_x, _y, _object){
	instance_create_depth(_x, _y, DEFAULT_LAYER, _object);
}

function start_game() {
	instance_create(room_width/2, room_height/2, obj_player);
	instance_create(0, 0, obj_gamemanager);
	instance_create(0, 0, obj_enemySpawner);
	instance_create(0, 0, obj_debug);
	instance_create(0, 0, obj_timer);
	instance_create(0, 0, obj_levelUpMenu);
	instance_create(0, 0, obj_expBar);
	make_menu_invisible();
	//instance_create(0, 0, obj_ImGuiGM)
	//instance_create(0, 0, obj_bento);
}

function reactivate_essential_objects(){
	//Reactivates important objects after calling instance_deactivate_all
	instance_activate_object(input_controller_object);	
	instance_activate_object(obj_timer);
	instance_activate_object(obj_levelUpMenu);
	instance_activate_object(obj_weapon);
	instance_activate_object(obj_player);
	instance_deactivate_object(obj_bullet);
}

function activate_pause_objects(){
	//activate objects that should appear when the game is paused
	instance_activate_object(obj_levelUpMenu);
}

function make_menu_visible(){
	obj_levelUpMenu.visible = true;
}

function make_menu_invisible(){
	obj_levelUpMenu.visible = false;
}

function pause_game(){
	global.game_paused = true;
	instance_destroy(obj_bullet);
}

function resume_game(){
	make_menu_invisible();
	global.game_paused = false;
	instance_activate_all();
}