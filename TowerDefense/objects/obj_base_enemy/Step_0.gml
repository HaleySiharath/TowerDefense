/// @description Walking animation


// call function to do walking animation
enemyMovement(self);

if (self.health <= 0)
{
	global.money += souls;
	sprite_index = spr_soul_coin;
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	speed = 0;
	alarm[1] = 4;
}

if (path_position == 1)
{
	global.health -= 1
	instance_destroy(self)
}

