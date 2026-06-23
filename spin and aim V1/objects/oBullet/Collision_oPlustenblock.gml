global.XP += 10

instance_destroy(oPlustenblock);

instance_destroy();

var plusten_spawn_range_x = irandom_range(0, 800);

var plusten_spawn_range_y = irandom_range(0, 600);


	if (point_in_rectangle(x, y, oCircle.bbox_left, oCircle.bbox_top, oCircle.bbox_right, oCircle.bbox_bottom))
	{
	
	
		if (plusten_spawn_range_x < oCircle.x) {
        plusten_spawn_range_x = irandom_range(0, 150); // Safe left zone
		} else {
			plusten_spawn_range_x = irandom_range(650, 800); // Safe right zone
		}
	
			if (plusten_spawn_range_y < oCircle.y) {
			plusten_spawn_range_y = irandom_range(0, 150); // Safe top zone
		} else {
			plusten_spawn_range_y = irandom_range(450, 600); // Safe bottom zone
		}
};

instance_create_layer(plusten_spawn_range_x, plusten_spawn_range_y, "Instances", oPlustenblock);