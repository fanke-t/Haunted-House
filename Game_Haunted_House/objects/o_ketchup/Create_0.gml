function fire_bullet() {
  var x_offset = lengthdir_x(16, dir);
  var y_offset = lengthdir_y(16, dir);
  var bullet = instance_create_layer(x+x_offset, y+y_offset, "Instances", o_ketchup_splats);
  bullet.direction = dir;
  bullet.image_angle = dir;
  alarm[0] = bullet_cooldown;
}