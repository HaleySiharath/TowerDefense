global.currentEnemies--
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
if (path_position != 1 and split > 0)
{
	SplitSpawn(split, path_position)
}
if (path_position != 1 and deathSpiritCount > 0)
{
	SpiritSpawn(deathSpiritCount, path_position)
}
show_debug_message(global.currentEnemies)