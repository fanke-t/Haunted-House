/// @description Move towards the player

// Death
if (health_ <= 0) {
  instance_destroy();
}

// Bereken de richting naar de speler
if (instance_exists(o_main)) {
  dir = point_direction(x, y, o_main.x, o_main.y);  // Bereken de richting naar de speler

  // Versnel in de richting van de speler
  speed_x += lengthdir_x(acceleration, dir);
  speed_y += lengthdir_y(acceleration, dir);

  // Beperk de snelheid tot max_speed
  if (point_distance(0, 0, speed_x, speed_y) > max_speed) {
    speed_x = lengthdir_x(max_speed, dir);
    speed_y = lengthdir_y(max_speed, dir);
  }

  // Controleer of de vijand kan schieten
  if (alarm[0] <= 0) {
    fire_bullet();  // Zorg ervoor dat je functie voor het schieten correct is geïmplementeerd
    alarm[0] = bullet_cooldown;  // Reset de cooldown timer voor het schieten
  }
}

// Zorg ervoor dat de vijand zijn snelheid bijwerkt
x += speed_x;
y += speed_y;