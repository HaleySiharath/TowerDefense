// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// have enemy change their sprite for correct walking animation
function enemyMovement(enemy){
	// change sprite based on direction
	
	if(enemy.direction >= 0 && enemy.direction < 45)
	{
		enemy.sprite_index = enemy.enemySpriteRight;
	}
	
	else if(enemy.direction >= 45 && enemy.direction < 135)
	{
		enemy.sprite_index = enemy.enemySpriteUp;
	}
	
	else if(enemy.direction >= 135 && enemy.direction < 225)
	{
		enemy.sprite_index = enemy.enemySpriteLeft;
	}
	
	else if(enemy.direction >= 225 && enemy.direction < 315)
	{
		enemy.sprite_index = enemy.enemySpriteDown;
	}
	
}
