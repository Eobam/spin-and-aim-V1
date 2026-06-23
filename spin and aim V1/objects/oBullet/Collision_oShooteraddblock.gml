instance_destroy(oShooteraddblock);

instance_destroy();

global.XP += 1;

global.circlestate += 1;

if global.circlestate == 1{
	global.circlesprite = sTwoshootercircle
};

if global.circlestate == 2{
	global.circlesprite = sThreeshootercircle
};

if global.circlestate == 3{
	global.circlesprite = sFourshootercircle
};

var safe_shooter_distance = 150;

var shooter_spawn_range_x = irandom_range(0, 800);

var shooter_spawn_range_y = irandom_range(0, 600);

if global.circlestate < 3 {
	if (point_in_rectangle(x, y, oCircle.bbox_left, oCircle.bbox_top, oCircle.bbox_right, oCircle.bbox_bottom))
	{
	
	
		if (shooter_spawn_range_x < oCircle.x) {
        shooter_spawn_range_x = irandom_range(0, 150); // Safe left zone
		} else {
			shooter_spawn_range_x = irandom_range(650, 800); // Safe right zone
		}
	
			if (shooter_spawn_range_y < oCircle.y) {
			shooter_spawn_range_y = irandom_range(0, 150); // Safe top zone
		} else {
			shooter_spawn_range_y = irandom_range(450, 600); // Safe bottom zone
		}

	}
	instance_create_layer(shooter_spawn_range_x, shooter_spawn_range_y, "Instances", oShooteraddblock);
}





