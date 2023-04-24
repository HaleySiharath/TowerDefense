function GetTypeMultiplier(towerFlame, towerFrost, towerShock, enemyFlame, enemyFrost, enemyShock)
{
	multiplier = 1
	if (towerFlame and enemyFlame)
	{
		multiplier *= 0.5
	}
	if (towerFlame and enemyFrost)
	{
		multiplier *= 2
	}
	if (towerFlame and enemyShock)
	{
		multiplier *= 0.5
	}
	if (towerFrost and enemyFlame)
	{
		multiplier *= 0.5
	}
	if (towerFrost and enemyFrost)
	{
		multiplier *= 0.5
	}
	if (towerFrost and enemyShock)
	{
		multiplier *= 2
	}
	if (towerShock and enemyFlame)
	{
		multiplier *= 2
	}
	if (towerShock and enemyFrost)
	{
		multiplier *= 0.5
	}
	if (towerShock and enemyShock)
	{
		multiplier *= 0.5
	}
	return multiplier
}

function SplitSpawn(splitNumber, pathDistance)
{
	slime = instance_create_layer(0,0,"Enemys", obj_enemy_slime)
	slime.split = splitNumber - 1
	slime.path_position = clamp(pathDistance + random_range(-0.1, -0.05), 0, 1)
	slime = instance_create_layer(0,0,"Enemys", obj_enemy_slime)
	slime.split = splitNumber - 1
	slime.path_position = clamp(pathDistance + random_range(-0.1, -0.05), 0, 1)
}

function SpiritSpawn(spiritCount, pathDistance)
{
	for (i = 0; i < spiritCount; i++)
	{
		spirit = instance_create_layer(0,0,"Enemys", obj_enemy_spirit)
		spirit.path_position = clamp(pathDistance + random_range(-0.1, -0.05), 0, 1)
		spirit.deathSpiritCount = 0
	}
}

function DemonSpawn(count, pathDistance)
{
	for (i = 0; i < count; i++)
	{
		demon = instance_create_layer(0,0,"Enemys", obj_enemy_spirit)
		demon.path_position = clamp(pathDistance + random_range(-0.1, 0.05), 0, 0.95)
		demon.demonSpawnCount = 0
	}
}

function DisableTowers(xPos, yPos, distance, time)
{
	towersInRange = []
	counter = 0
	for (i = 0; i < instance_number(obj_base_tower); i++)
	{
		tower = instance_find(obj_base_tower, i)
		if (point_distance(xPos, yPos, tower.x, tower.y) <= distance)
		{
			array_insert(towersInRange, counter++, tower)
		}
	}
	for (i = 0; i < array_length(towersInRange); i++)
	{
		DisableTower(towersInRange[i], time)
	}
}

function DisableTower(tower, time)
{
	tower.isDisabled = true
	tower.alarm[11] = time * room_speed
}

function SpeedUpEnemies(xPos, yPos, distance, time, strength)
{
	enemysInRange = []
	counter = 0
	for (i = 0; i < instance_number(obj_base_enemy); i++)
	{
		enemy = instance_find(obj_base_enemy, i)
		if (point_distance(xPos, yPos, enemy.x, enemy.y) <= distance)
		{
			array_insert(enemysInRange, counter++, enemy)
		}
	}
	for (i = 0; i < array_length(enemysInRange); i++)
	{
		SpeedEnemy(enemysInRange[i], time, strength)
	}
}

function SpeedEnemy(enemy, time, strength)
{
	enemy.speedMultiplier *= strength
	enemy.path_speed *= strength
	enemy.alarm[11] = time * room_speed
}

function HealEnemies(xPos, yPos, distance, strength)
{
	enemysInRange = []
	counter = 0
	for (i = 0; i < instance_number(obj_base_enemy); i++)
	{
		enemy = instance_find(obj_base_enemy, i)
		if (point_distance(xPos, yPos, enemy.x, enemy.y) <= distance)
		{
			array_insert(enemysInRange, counter++, enemy)
		}
	}
	for (i = 0; i < array_length(enemysInRange); i++)
	{
		HealEnemy(enemysInRange[i], strength)
	}
}

function HealEnemy(enemy, strength)
{
	enemy.health = clamp(enemy.health + strength, 0, enemy.maxHealth)
}