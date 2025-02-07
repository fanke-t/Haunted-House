direction = point_direction(x,y,o_main.x,o_main.y);

var xinput = keyboard_check(vk_right) - keyboard_check(vk_left);
var yinput = keyboard_check(vk_down) - keyboard_check(vk_up);

if (following) {
    var angle = point_direction(x, y, o_main.x, o_main.y);
    move_towards_point(o_main.x, o_main.y, 4); 
}

if (xinput > 0) {
  sprite_index = s_friend_right;
  image_speed = 1;
}
else if (xinput < 0) {
  sprite_index = s_friend_left;
  image_speed = 1;
}
else if (yinput > 0) {
  sprite_index = s_friend_front;
  image_speed = 1;
}
else if (yinput < 0) {
  sprite_index = s_friend_back;
  image_speed = 1;
}