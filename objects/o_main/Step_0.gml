var xinput = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")));
var yinput = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")));
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
or keyboard_check(ord("D")) or keyboard_check(ord("A"))
or keyboard_check(ord("S")) or keyboard_check(vk_up) or keyboard_check(ord("W"))
or keyboard_check_released(vk_up) or keyboard_check_released(vk_down)) {
  image_speed = 0;
}

draw_text(x, y - 20, string(alarm[0]));

if (keyboard_check(vk_space) and can_shoot) {
    can_shoot = false; // Voorkomt direct opnieuw schieten
    alarm[0] = bullet_cooldown; // Start cooldown
    shoot_bullet(); // Schiet een kogel
}