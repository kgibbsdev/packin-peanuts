if(experience >= next_level_experience){
	pause_game();
	level += 1;
	experience = 0;
	next_level_experience = global.exp_amounts[level];
	
}
if(!global.game_paused)
{
	if(input_check("up")){ y -= moveSpeed }
	if(input_check("down")){ y += moveSpeed }
	if(input_check("left")){ x -= moveSpeed }
	if(input_check("right")){ x += moveSpeed }
}

if(hit_cooldown > 0){
	hit_cooldown -= 1;	
}

leftWeaponOffset = 0;
rightWeaponOffset = 0;

for(var weaponIndex=0; weaponIndex<=array_length(weaponSlots)-1; weaponIndex++){
	var weaponSlot = weaponSlots[weaponIndex];
	if(!is_even(weaponIndex)){
		//weapon is on the left
		weaponSlot.x = x-sprite_width/2;
		weaponSlot.y = y + (leftWeaponOffset*30);
		weaponSlot.xScale = DirectionFacing.left;
		leftWeaponOffset += 1;
		
	}
	else{
		//weapon is on the right
		weaponSlot.x = x + sprite_width/2;
		weaponSlot.y = y + (rightWeaponOffset*30);
		weaponSlot.xScale = DirectionFacing.right;
		rightWeaponOffset += 1;
	}
}

var drop_gotten = instance_place(x, y, obj_drop);
if(drop_gotten != noone){
	drop_gotten.pick_up();
}
