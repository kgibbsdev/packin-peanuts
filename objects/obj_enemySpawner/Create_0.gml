spawn_basicEnemy = function(_number){
	for(var i=0; i<_number; i++){
	var random_x = irandom_range(0, room_width);
	var random_y = irandom_range(0, room_height);
	instance_create(random_x, random_y, obj_basicEnemy);
	}
}

spawn_basicEnemy(10);
