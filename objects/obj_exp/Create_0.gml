event_inherited();


pick_up = function(){
	show_debug_message("exp");
	with(obj_player){
		experience += 1;
	}
	instance_destroy();
}