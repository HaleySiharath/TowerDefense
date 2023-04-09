/// @description Walking animation


// call function to do walking animation
enemyMovement(self);

if (path_position == 1)
{
	global.health -= 1
	instance_destroy(self)
}