function shoot_bullet() {
    var bullet = instance_create_layer(x, y, "Bullets", o_main_bullet);

    // Pas richting aan op basis van sprite
    if (sprite_index == s_main_left) {
        bullet.direction = 180;
        bullet.x -= 16;
    } 
    else if (sprite_index == s_main_right) {
        bullet.direction = 0;
        bullet.x += 16;
    } 
    else if (sprite_index == s_main_back) {
        bullet.direction = 90;
        bullet.y -= 16;
    } 
    else if (sprite_index == s_main_front) {
        bullet.direction = 270;
        bullet.y += 16;
    }

    bullet.speed = 6; // Stel snelheid van de kogel in
}

