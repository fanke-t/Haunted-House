/// @description Soft collide
var dir = point_direction(other.x, other.y, x, y);
speed_x += lengthdir_x(.1, dir);
speed_y += lengthdir_y(.1, dir);