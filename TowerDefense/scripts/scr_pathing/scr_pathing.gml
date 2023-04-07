
function UpdateEnemyPath()
{
	mpgrid = mp_grid_create(420, 0, 18, 18, 60, 60)
	for (i = 0; i < 18; i++)
	{
		for (j = 0; j < 18; j++)
		{
			if (global.grid[i][j])
			{
				mp_grid_add_rectangle(mpgrid, 60 * i + 420, 60 * j, 60 * i + 421, 60 * j + 1)
			}
		}
	}
	mp_grid_path(mpgrid, pt_mp, global.xStart * 60 + 420 + 30, global.yStart * 60 + 30, global.xEnd * 60 + 420 + 30, global.yEnd * 60 + 30, true)
}