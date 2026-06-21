turn_speed = 0;

global.XP = 0;

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


if keyboard_check_pressed(vk_space)
{
	shoot()
};