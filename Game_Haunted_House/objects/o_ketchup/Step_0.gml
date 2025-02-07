if (instance_exists(o_main)) {
  speed_x += lengthdir_x(acceleration, dir);
  speed_y += lengthdir_y(acceleration, dir);
  if (point_distance(0, 0, speed_x, speed_y) > max_speed) {
    speed_x = lengthdir_x(max_speed, dir);
    speed_y = lengthdir_y(max_speed, dir);
  }
  if alarm[0] <= 0 {
    fire_bullet();
  }
}