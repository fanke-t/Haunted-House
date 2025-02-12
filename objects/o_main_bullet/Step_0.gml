// Beweeg de kogel in de juiste richting
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Verwijder de kogel als deze buiten het scherm gaat
if (x < 0 || x > room_width || y < 0 || y > room_height || place_meeting(x, y, o_solid)) {
    instance_destroy();
}