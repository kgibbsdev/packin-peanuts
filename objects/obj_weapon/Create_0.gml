
time_to_fire = 10;

alarm_set(0, time_to_fire);

fire = function(){
	var bullet = instance_create_depth(x, y, depth, obj_bullet);
	bullet.image_xscale = image_xscale;
}