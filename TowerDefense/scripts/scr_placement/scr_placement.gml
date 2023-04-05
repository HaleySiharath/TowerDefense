global.xStart = 0
global.yStart = 17
global.xEnd = 17
global.yEnd = 0

function FindNearestPlacement()
{
	xPos = mouse_x
	yPos = mouse_y
	xPos -= 420
	gridSize = 60
	xPos -= gridSize / 2
	yPos -= gridSize / 2
	xPos = round(xPos / gridSize)
	yPos = round(yPos / gridSize)
	xPos = clamp(xPos, 0, 17)
	yPos = clamp(yPos, 0, 17)
	return [xPos, yPos]
}

function FindNearestPosition()
{
	pos = FindNearestPlacement()
	xPos = pos[0]
	yPos = pos[1]
	xLoc = xPos * gridSize + gridSize / 2 + 420
	yLoc = yPos * gridSize + gridSize / 2
	return [xLoc, yLoc]
}

function CheckPlacementAvailable()
{
	pos = FindNearestPlacement()
	xPos = pos[0]
	yPos = pos[1]
	if (global.xEnd == xPos and global.yEnd == yPos)
	{
		return false
	}
	if (global.xStart == xPos and global.yStart == yPos)
	{
		return false
	}
	if (global.grid[xPos][yPos] == true)
	{
		return false
	}
	grid = []
	for (i = 0; i < 18; i++)
	{
		tempCopy = []
		array_copy(tempCopy, 0, global.grid[i], 0, 18)
		array_insert(grid, i, tempCopy)
	}
	grid[xPos][yPos] = true
	if (FindPossiblePath(grid))
	{
		return true
	}
	return false	
}

function FindPossiblePath(grid)
{
	return TestPath(global.xStart, global.yStart, grid)
}

function TestPath(xPos, yPos, grid)
{
	if (global.xEnd == xPos and global.yEnd == yPos)
	{
		return true
	}
	if (xPos != clamp(xPos, 0, 17) or yPos != clamp(yPos, 0, 17))
	{
		return false
	}
	if (grid[xPos][yPos] == true)
	{
		return false
	}
	grid[xPos][yPos] = true
	if (TestPath(xPos - 1, yPos, grid))
	{
		return true
	}
	if (TestPath(xPos + 1, yPos, grid))
	{
		return true
	}
	if (TestPath(xPos, yPos - 1, grid))
	{
		return true
	}
	if (TestPath(xPos, yPos + 1, grid))
	{
		return true
	}
	return false
}