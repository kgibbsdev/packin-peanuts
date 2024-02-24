fire();

if(time_to_fire > 0){
	alarm_set(0, time_to_fire);	
}
else {
	alarm_set(0, 1);
	show_debug_message("[Weapon]: time_to_fire was <= 0");
}