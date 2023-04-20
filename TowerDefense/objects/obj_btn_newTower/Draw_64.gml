/// @description Draw grey box around button sprite

// set drawing color
draw_set_color(c_silver);

// draw outline around sprite
recX1 = x - (sprite_width / 2);
recY1 = y - (sprite_height / 2);
recX2 = x + (sprite_width / 2);
recY2 = y + (sprite_height / 2);

// place rectangle within the square to appear as a button
draw_rectangle(recX1, recY1	, recX2, recY2, false);

// draw actual sprite of tower
draw_sprite_stretched(spr_base_tower, 0, recX1 + 5, recY1 + 5, 110, 110);
draw_sprite_stretched(tower_sprite, 0, recX1 + 25, recY1 + 25, 70, 70);

// text to indicate tower type
draw_set_font(ft_tower_name);
draw_set_color(c_white);
draw_set_alpha(1); // opacte
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y + 80, tower_name);

// text to indicate price of tower
draw_set_font(ft_tower_price);
price_text = string(tower_price) + " f";
draw_text(x, y + 103, price_text);