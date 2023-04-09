if (CheckPlacementAvailable())
{
	pos = FindNearestPlacement()
	xPos = pos[0]
	yPos = pos[1]
	global.grid[xPos][yPos] = true
	UpdateEnemyPath()
	instance_create_layer(x, y, "Towers", obj_base_tower)
	StopBuy()
}