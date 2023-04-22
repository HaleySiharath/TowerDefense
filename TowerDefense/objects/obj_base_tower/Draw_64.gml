/// @description draw range around building

// set drawing color
draw_set_color(c_aqua);

// draw a circle to represent range 
draw_circle(x, y, range, true);


// draw a sprite 
draw_sprite_ext(weaponSprite, 0, x, y, 1.2, 1.2, weaponDirection + 245, c_white, 1)
