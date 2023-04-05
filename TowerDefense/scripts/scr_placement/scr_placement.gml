global.xStart = 0
global.yStart = 0
global.xEnd = 17
global.yEnd = 17

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
	show_debug_message("starting checkPlacementAvailable method")
	pos = FindNearestPlacement()
	show_debug_message("found nearest placement")
	xPos = pos[0]
	yPos = pos[1]
	show_debug_message("checking if grid space is available")
	DebugGrid()
	if (global.grid[xPos][yPos] == true)
	{
		show_debug_message("grid place not available")
		return false
	}
	show_debug_message("grid place is open")
	show_debug_message("creating empty grid")
	grid = []
	show_debug_message("copying global to grid")
	for (i = 0; i < 18; i++)
	{
		tempCopy = []
		array_copy(tempCopy, 0, global.grid[i], 0, 18)
		array_insert(grid, i, tempCopy)
	}
	//array_copy(grid, 0, global.grid, 0, array_length(global.grid))
	show_debug_message("setting value to filled")
	grid[xPos][yPos] = true
	show_debug_message("searching for viable path")
	if (FindPossiblePath(grid))
	{
		show_debug_message("viable path found")
		return true
	}
	show_debug_message("viable path not found")
	return false	
}

function FindPossiblePath(grid)
{
	return TestPath(global.xStart, global.yStart, grid)
}

function TestPath(xPos, yPos, grid)
{
	show_debug_message("checking if this is goal")
	if (global.xEnd == xPos and global.yEnd == yPos)
	{
		show_debug_message("is goal")
		return true
	}
	show_debug_message("not goal")
	show_debug_message("checking if positions are in range")
	if (xPos != clamp(xPos, 0, 17) or yPos != clamp(yPos, 0, 17))
	{
		show_debug_message("not in range")
		return false
	}
	show_debug_message("in range")
	show_debug_message("checking if open")
	if (grid[xPos][yPos] == true)
	{
		show_debug_message("not open")
		return false
	}
	show_debug_message("is open")
	show_debug_message("setting current location to true")
	grid[xPos][yPos] = true
	show_debug_message("checking left")
	if (TestPath(xPos - 1, yPos, grid))
	{
		show_debug_message("left viable")
		return true
	}
	show_debug_message("checking right")
	if (TestPath(xPos + 1, yPos, grid))
	{
		show_debug_message("right viable")
		return true
	}
	show_debug_message("checking up")
	if (TestPath(xPos, yPos - 1, grid))
	{
		show_debug_message("up viable")
		return true
	}
	show_debug_message("checking down")
	if (TestPath(xPos, yPos + 1, grid))
	{
		show_debug_message("down viable")
		return true
	}
	show_debug_message("dead end")
	return false
}

function DebugGrid()
{
	for (i = 0; i < 18; i++)
	{
		show_debug_message(DebugRow(i))
	}
}

function DebugRow(row)
{
	returnVal = ""
	for (j = 0; j < 18; j++)
	{
		if (global.grid[row][j])
		{
			value = "true"
		}
		else
		{
			value = "false"
		}
		returnVal = string_concat(returnVal, value, " ")
	}
	return returnVal
}