if health_ <= 0 {
  instance_destroy();
}

dir = point_direction(x, y, o_main.x, o_main.y-o_main.sprite_height/2);

// Move force
if instance_exists(o_main) {
  speed_x += lengthdir_x(acceleration, dir);
  speed_y += lengthdir_y(acceleration, dir);
  if (point_distance(0, 0, speed_x, speed_y) > max_speed) {
    speed_x = lengthdir_x(max_speed, dir);
    speed_y = lengthdir_y(max_speed, dir);
  }
}

  if alarm[0] <= 0 {
    fire_bullet();
  }
  // Bounce off solids
if (place_meeting(x+speed_x, y, o_solid)) {
  speed_x = -speed_x;
}
if (place_meeting(x, y+speed_y, o_solid)) {
  speed_y = -speed_y;
}

x += speed_x;
y += speed_y;

