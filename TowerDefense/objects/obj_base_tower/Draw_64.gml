/// @description draw range around building

// set drawing color
draw_set_color(c_aqua);

// draw a circle to represent range 
draw_circle(x, y, range, true);


// draw a sprite 
draw_sprite_stretched(weaponSprite, 0, x - 40 , y - 40, 80, 80)
