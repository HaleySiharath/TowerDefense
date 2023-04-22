/// @description Walking animation


// call function to do walking animation
enemyMovement(self);

if (self.health <= 0)
{
	global.money += souls;
	speed = 0;
	sprite_index = spr_soul_coin;
	sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
	alarm[1] = 2;
	instance_destroy(self);
}

if (path_position == 1)
{
	global.health -= 1
	instance_destroy(self)
}

