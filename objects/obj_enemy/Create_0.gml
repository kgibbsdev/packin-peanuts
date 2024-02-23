playerReference = instance_nearest(x, y, obj_player);
moveSpeed = 2;
gettingShot = false;
health_points_base = irandom_range(1, 2);
health_points = health_points_base;

overlay_color = c_red; // You can change 'c_red' to any color you desire
overlay_duration_base = 5;
overlay_duration = 5; // Number of frames you want the overlay to last
overlay_alpha = 1.0; // Starting alpha value