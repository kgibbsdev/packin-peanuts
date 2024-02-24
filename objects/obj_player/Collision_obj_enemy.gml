
//This is handled in its own event because we do not need a reference to the hit enemy at this time.
	if(hit_cooldown <= 0){
		overlay_alpha = 1;
		if(overlay_duration <= 0){
			overlay_duration = overlay_duration_base;	
		}
		hit_cooldown = hit_cooldown_base;
		hitpoints -= 1;
	}