/// @description Walking animation


// call function to do walking animation
//enemyMovement(self);

if (regen < 0)
{
	self.health += regen / room_speed
}

if (self.health <= 0)
{
	global.money += souls;
	if (respawnCount > 0)
	{
		respawnCount--
		self.health = maxHealth / 2
		path_speed *= 1.5
		if (path_position != 1 and split > 0)
		{
			SplitSpawn(split, path_position)
		}
		if (path_position != 1 and deathSpiritCount > 0)
		{
			SpiritSpawn(deathSpiritCount, path_position)
		}
		if (deathRange > 0)
		{
			if (deathDisable > 0)
			{
				DisableTowers(x, y, deathRange, deathDisable)
			}
			if (deathSpeed > 0)
			{
				SpeedUpEnemies(x, y, deathRange, deathSpeedTime, deathSpeed)
			}
			if (deathHeal > 0)
			{
				HealEnemies(x, y, deathRange, deathHeal)
			}
		}
	}
	else
	{
		speed = 0;
		sprite_index = spr_soul_coin;
		sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);
		alarm[1] = 2;
		instance_destroy(self);
	}
}

if (regen > 0)
{
	self.health = clamp(self.health + regen / room_speed, 0, maxHealth)
}

if (path_position == 1)
{
	global.health -= 1
	instance_destroy(self)
}

