turn_speed = 0;

if (keyboard_check(ord("A")))
{
  turn_speed = 2;
}

if (keyboard_check(ord("D")))
{
  turn_speed = -2;
}

image_angle += turn_speed; 

function shoot (){
	bullet = instance_create_layer(x,y, layer, oBullet)
	bullet.speed = 20
	bullet.direction =  image_angle
};

function shoot_double (){
	bullet = instance_create_layer(x,y, layer, oBullet)
	bullet.speed = 20
	bullet.direction =  image_angle + 95
	shoot()
};

function shoot_triple() {
		bullet = instance_create_layer(x,y, layer, oBullet)
	bullet.speed = 20
	bullet.direction =  image_angle + 280
	shoot()
	shoot_double()
};

function shoot_quad() {
	bullet = instance_create_layer(x,y, layer, oBullet)
	bullet.speed = 20
	bullet.direction =  image_angle + 177
	shoot()
	shoot_double()
	shoot_triple()
};

if (keyboard_check_pressed(vk_space) and global.circlestate == 0)
{
	shoot()
};

if (keyboard_check_pressed(vk_space) and global.circlestate == 1)
{
	shoot_double()
};

if (keyboard_check_pressed(vk_space) and global.circlestate == 2)
{
	shoot_triple()
};

if (keyboard_check_pressed(vk_space) and global.circlestate == 3)
{
	shoot_quad()
};

sprite_index = global.circlesprite;

show_debug_message(global.circlestate)