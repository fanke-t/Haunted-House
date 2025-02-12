/// @description Initialize the enemy
speed_x = 0;
speed_y = 0;
acceleration = 0.05;  // Versnelling
max_speed = 2;  // Max snelheid
health_ = 4;  // Gezondheid van de vijand
dir = 0;  // Richting (hoeft niet meteen ingesteld te worden)
bullet_cooldown = 60;  // Tijd tussen schoten
alarm[0] = bullet_cooldown;  // Cooldown timer voor schieten

