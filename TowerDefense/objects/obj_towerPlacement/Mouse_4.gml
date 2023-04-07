if (visible and CheckPlacementAvailable())
{
	pos = FindNearestPlacement()
	xPos = pos[0]
	yPos = pos[1]
	global.grid[xPos][yPos] = true
	UpdateEnemyPath()
}