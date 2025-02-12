/// @description Spawn ketchups
if (!instance_exists(o_ketchup)) {
  repeat (wave) {
    instance_create_layer(random_range(0, room_width), random_range(-64, -32), "Instances", o_ketchup);
  }
  wave += 1;
}
