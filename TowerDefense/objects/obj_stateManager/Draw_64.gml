/// @description display current stats

draw_set_font(ft_tower_name);
draw_set_color(c_white);
draw_set_alpha(1); // opacte
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// draw current stats (health and money)
draw_text(50, 420, "Health: " + string(global.health));
draw_text(50, 460, "Souls: " + string(global.money));
draw_text(50, 500, "Wave: " + string(global.currentWave));

dialogueX = display_get_gui_width() / 2;
dialogueY = display_get_gui_height() - (display_get_gui_height() / 7);

// describe game play
draw_text(50, 540,  "To place towers please drag and \ndrop any tower on the right" + 
						" \nside menu. To move towers \nselect the move button then \nselect any tower" +
						" you would like \nto move. To remove towers \nselect the delete button and" +
						" \nselect any tower you would \nlike to delete (be careful with \nwhat you select as all sales \nare final)" +
						" To begin the \nnext wave select the play \nbutton and watch your towers \ngo to work!");
