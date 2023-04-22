/// @description draw with shader

if(damaged == true)
{
	shader_set(sh_enemy_damage);
	draw_self();
}
else
{
	// make sure a sprite is assigned
	if(sprite_index != -1)
	{
		draw_self();
	}
}

shader_reset();