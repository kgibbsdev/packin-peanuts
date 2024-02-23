var target_x = playerReference.x;
var target_y = playerReference.y;

var direction_to_point = point_direction(x, y, target_x, target_y);
var move_x = lengthdir_x(moveSpeed, direction_to_point);
var move_y = lengthdir_y(moveSpeed, direction_to_point);

x += move_x;
y += move_y;

if(knockbackCooldown > 0){
	knockbackCooldown -= 1;	
}

var bulletInst = instance_place(x, y, obj_bullet);

if (bulletInst != noone) {
	//take damage
	overlay_alpha = 1;
	if(knockbackCooldown <= 0){
		gettingShot = true;
		if(overlay_duration <= 0){
			overlay_duration = overlay_duration_base;	
		}
		
	    // Get the direction from the bullet to the enemy
	    var direction_to_enemy = point_direction(bulletInst.x, bulletInst.y, x, y);
    
	    // Calculate knockback direction (you may adjust the angle)
	    var knockback_direction = direction_to_enemy; // 180 degrees opposite
    
	    // Calculate knockback magnitude (you may adjust the value)
	    var knockback_magnitude = 30
    
	    // Apply knockback
	    var knockback_x = lengthdir_x(knockback_magnitude, knockback_direction);
	    var knockback_y = lengthdir_y(knockback_magnitude, knockback_direction);
	    x += knockback_x;
	    y += knockback_y;
		knockbackCooldown = knockbackCooldownBase;
		
		health_points -= 1;
		instance_destroy(bulletInst);
	}
}

if(health_points <= 0){
	instance_destroy();	
}