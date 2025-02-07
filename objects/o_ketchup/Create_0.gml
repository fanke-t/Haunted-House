speed_x = 0;
speed_y = 0;
acceleration = .5;
max_speed = 3;
health_ = 4;
dir = 0;
bullet_cooldown = 30;
alarm[0] = bullet_cooldown;

// Fire a bullet
function fire_bullet() {
  var x_offset = lengthdir_x(16, dir);
  var y_offset = lengthdir_y(16, dir);
  var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", o_ketchup_splats);
  bullet.direction = dir;
  bullet.image_angle = dir;
  alarm[0] = bullet_cooldown;
}