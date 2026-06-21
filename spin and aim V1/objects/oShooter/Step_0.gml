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