
time_to_fire = 100;

alarm_set(0, time_to_fire);

fire = function(){
	if(!global.game_paused){
		var bullet = instance_create_depth(x, y, depth, obj_bullet);
		bullet.image_xscale = image_xscale;
	}
	
}