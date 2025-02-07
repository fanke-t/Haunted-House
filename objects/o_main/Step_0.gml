var xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
var yinput = keyboard_check(vk_down) - keyboard_check(vk_up);
move_and_collide(xinput * my_speed, yinput * my_speed, o_solid);
if (xinput > 0) {
  sprite_index = s_main_right;
  image_speed = 1;
}
else if (xinput < 0) {
  sprite_index = s_main_left;
  image_speed = 1;
}
else if (yinput > 0) {
  sprite_index = s_main_front;
  image_speed = 1;
}
else if (yinput < 0) {
  sprite_index = s_main_back;
  image_speed = 1;
}

if (keyboard_check_released(vk_right) or keyboard_check_released(vk_left) 
or keyboard_check_released(vk_up) or keyboard_check_released(vk_down)) {
  image_speed = 0;
}