fireRate = 45;

alarm_set(0, fireRate);

fire = function(){
	var bullet = instance_create_depth(x, y, depth, obj_bullet);
	bullet.image_xscale = image_xscale;
}