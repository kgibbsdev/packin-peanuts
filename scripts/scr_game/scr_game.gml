function instance_create(_x, _y, _object){
	instance_create_depth(_x, _y, DEFAULT_LAYER, _object);
}

function start_game() {
	instance_create(room_width/2, room_height/2, obj_player);
	instance_create(0, 0, obj_gamemanager);
	instance_create(0, 0, obj_enemySpawner);
	instance_create(0, 0, obj_debug);
	instance_create(0, 0, obj_timer);
	instance_create(0, 0, objExample);
	instance_create(0, 0, obj_expBar);
	make_menu_invisible();
	//instance_create(0, 0, obj_ImGuiGM)
	//instance_create(0, 0, obj_bento);
}

function reactivate_essential_objects(){
	//Reactivates important objects after calling instance_deactivate_all
	instance_activate_object(input_controller_object);	
	instance_activate_object(obj_timer);
	instance_activate_object(objExample);
}

function activate_pause_objects(){
	//activate objects that should appear when the game is paused
	instance_activate_object(objExample);
}

function make_menu_visible(){
	objExample.visible = true;
}

function make_menu_invisible(){
	objExample.visible = false;
}