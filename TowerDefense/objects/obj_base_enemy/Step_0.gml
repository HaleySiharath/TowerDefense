/// @description Walking animation


// call function to do walking animation
enemyMovement(self);

if (self.health <= 0)
{
	instance_destroy(self)
}

if (path_position == 1)
{
	global.health -= 1
	instance_destroy(self)
}

