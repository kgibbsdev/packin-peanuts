if(gettingShot && overlay_duration > 0){
	overlay_duration -= 1;
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, overlay_color, overlay_alpha);
}
else{
	draw_self();
}

// Calculate the overlay alpha based on the remaining duration
overlay_alpha = max(overlay_duration / 60, 0);

// Draw the sprite with the overlay
//draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, overlay_color, overlay_alpha);