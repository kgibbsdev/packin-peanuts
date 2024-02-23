enum DirectionFacing {
	left = -1,
	right = 1,
}

function WeaponSlot(_weapon = noone) constructor {
	weapon = _weapon;
	x = 0;
	y = 0;
	xScale = 1;
	yScale = 1;
	rotation = 0;
}

add_weapon = function(_weapon){
	weaponSlotMax += 1;
	var weaponSlot = new WeaponSlot(_weapon);
	array_push(weaponSlots, weaponSlot);
}

moveSpeed = 6;
weaponSlotMax = 2;
weaponSlots = [];
weaponSlotSpacing = 5;

for(var i=0; i <= weaponSlotMax-1; i++){
	var newWeaponSlot = new WeaponSlot();
	newWeaponSlot.xScale = i % 2 > 0 ? DirectionFacing.right : DirectionFacing.left;
	newWeaponSlot.weapon = instance_create_depth(x, y, depth-1, obj_gun, {weaponSlot: newWeaponSlot});
	array_push(weaponSlots, newWeaponSlot);
}
