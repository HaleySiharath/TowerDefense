/// @description Draw grey box around button sprite

// set drawing color
draw_set_color(c_grey);

// draw outline around sprite
recX1 = x - (sprite_width / 2);
recY1 = y - (sprite_height / 2);
recX2 = x + (sprite_width / 2);
recY2 = y + (sprite_height / 2);

// place rectangle within the square to appear as a button
draw_rectangle(recX1, recY1	, recX2, recY2, false);

draw_sprite_stretched(tower_sprite, 0, recX1 + 10, recY1 + 10, 110, 110);


// text to indicate tower type
draw_set_font