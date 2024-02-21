if(input_check("up")){ y -= moveSpeed }
if(input_check("down")){ y += moveSpeed }
if(input_check("left")){ x -= moveSpeed }
if(input_check("right")){ x += moveSpeed }

leftWeaponOffset = 0;
rightWeaponOffset = 0;

for(var weaponIndex=0; weaponIndex<=array_length(weaponSlots)-1; weaponIndex++){
	var weaponSlot = weaponSlots[weaponIndex];
	
	if(!is_even(weaponIndex)){
		//weapon is on the left
		weaponSlot.x = x;
		weaponSlot.y = y + (leftWeaponOffset*30);
		leftWeaponOffset += 1;
	}
	else{
		//weapon is on the right
		weaponSlot.x = x + sprite_width;
		weaponSlot.y = y + (rightWeaponOffset*30);
		rightWeaponOffset += 1;
	}
}