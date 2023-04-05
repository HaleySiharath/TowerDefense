//global.grid = array_create(18, array_create(18, false))
for (i = 0; i < 18; i++)
{
	for (j = 0; j < 18; j++)
	{
		global.grid[i][j] = false
	}
}
DebugGrid()
len = array_length(global.grid)
global.grid[2][2] = true
show_debug_message(len)
for (i = 0; i < len; i++)
{
	show_debug_message(array_length(global.grid[i]))
}