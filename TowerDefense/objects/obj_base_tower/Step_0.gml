/// @description if enemy is in range then make a projectile

// set list to current obejcts in range
enemysInRange = ds_list_create();

collisionNum = collision_circle_list(x, y, range, obj_base_enemy, false, true, enemysInRange, true);

//show_debug_message(enemysInRange);

if(collisionNum > 0)
{
	// get the closest enemy
	//target = enemysInRange[| 0];
	
	
	//https://manual.yoyogames.com/GameMaker_Language/GML_Reference/Maths_And_Numbers/Angles_And_Distance/point_direction.htm
	alarm[0] = attackSpeed;
}

ds_list_clear(enemysInRange);

