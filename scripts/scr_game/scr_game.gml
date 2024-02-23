function instance_create(_x, _y, _object){
	instance_create_depth(_x, _y, DEFAULT_LAYER, _object);
}

function start_game() {
	
	instance_create(room_width/2, room_height/2, obj_player);
	instance_create(0, 0, obj_gamemanager);
	instance_create(0, 0, obj_enemySpawner);
	instance_create(0, 0, obj_debug);
}