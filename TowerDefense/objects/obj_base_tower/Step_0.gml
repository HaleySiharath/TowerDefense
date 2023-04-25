/// @description if enemy is in range then make a projectile

if (not isDisabled)
{
	// set list to current obejcts in range

	enemysInRange = []
	enemys = []

	for (i = 0; i < instance_number(obj_base_enemy); i++)
	{
		enemys[i] = instance_find(obj_base_enemy, i)
	}

	for (i = 0; i < array_length(enemys); i++)
	{
		if (distance_to_object(enemys[i]) < range)
		{
			array_insert(enemysInRange, array_length(enemysInRange), enemys[i])
		}
	}

	if(array_length(enemysInRange) > 0 and timeCounter <= 0)
	{
		// get the closest enemy
		//target = enemysInRange[| 0];
		farthestEnemy = enemysInRange[0]
		for (i = 0; i < array_length(enemysInRange); i++)
		{
			if (enemysInRange[i].path_position > farthestEnemy.path_position)
			{
				farthestEnemy = enemysInRange[i]
			}
		}
	
		bullet = instance_create_layer(x, y, "Towers", projectileObject)
		bullet.direction = point_direction(x, y, farthestEnemy.x, farthestEnemy.y)
		weaponDirection = bullet.direction;
		bullet.image_angle = point_direction(x, y, farthestEnemy.x, farthestEnemy.y) + 265
		timeCounter = attackSpeed * room_speed
	}

	timeCounter--
}
	enemysInRange = []

