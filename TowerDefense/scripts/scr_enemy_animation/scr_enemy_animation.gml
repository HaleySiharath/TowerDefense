// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// have enemy change their sprite for correct walking animation
function enemyMovement(enemy){
	
	
	// change sprite based on direction
	
	if(instance_exists(enemy) and enemy.direction >= 0 && enemy.direction < 45)
	{
		enemy.sprite_index = enemy.enemySpriteRight;
	}
	
	else if(instance_exists(enemy) and enemy.direction >= 45 && enemy.direction < 135)
	{
		enemy.sprite_index = enemy.enemySpriteUp;
	}
	
	else if(instance_exists(enemy) and enemy.direction >= 135 && enemy.direction < 225)
	{
		enemy.sprite_index = enemy.enemySpriteLeft;
	}
	
	else if(instance_exists(enemy) and enemy.direction >= 225 && enemy.direction < 315)
	{
		enemy.sprite_index = enemy.enemySpriteDown;
	}
	else if(instance_exists(enemy))
	{
		//enemy.sprite_index = undefined;
	}

}
