// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// have enemy change their sprite for correct walking animation
function enemyMovement(){
	// change sprite based on direction
	
	if(direction >= 0 && direction < 45)
	{
		sprite_index = self.enemySpriteRight;
	}
	
	else if(direction >= 45 && direction < 135)
	{
		sprite_index = self.enemySpriteUp;
	}
	
	else if(direction >= 135 && direction < 225)
	{
		sprite_index = self.enemySpriteLeft;
	}
	
	else if(direction >= 225 && direction < 315)
	{
		sprite_index = self.enemySpriteDown;
	}
	
}
