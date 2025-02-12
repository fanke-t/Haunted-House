/// @description Take damage (hier moet nog het geluid ook gecodeerd worden)
instance_destroy(other);
if invincible == false {
	health_ -= 1;
	invincible = true;
	alarm[1] = 60;
}