enum DirectionFacing {
	left = -1,
	right = 1,
}

function WeaponSlot() constructor {
	weapon = noone;
	x = 0;
	y = 0;
	DirectionFacing = undefined;
}

moveSpeed = 4;
weaponSlotMax = 80;
weaponSlots = [];
weaponSlotSpacing = 5;

for(var i=0; i <= weaponSlotMax-1; i++){
	var newWeaponSlot = new WeaponSlot();
	newWeaponSlot.xScale = i % 2 > 0 ? DirectionFacing.right : DirectionFacing.left;
	newWeaponSlot.weapon = instance_create_depth(x, y, depth-1, obj_gun, {weaponSlot: newWeaponSlot});
	array_push(weaponSlots, newWeaponSlot);
}
