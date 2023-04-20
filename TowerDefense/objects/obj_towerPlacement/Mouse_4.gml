if (CheckPlacementAvailable())
{
	// set the final position of the tower and mark position as occupied
	pos = FindNearestPlacement()
	xPos = pos[0]
	yPos = pos[1]
	global.grid[xPos][yPos] = true
	
	// change the enemys path based on new tower
	UpdateEnemyPath()
	
	// create an instance on the map of the tower item clicked
	instance_create_layer(x, y, "Towers", tower_object);
	
	if(global.stateBuy == true)
	{	
		// exit buying mode (show the tower menu and delete the cancle button)
		StopBuy()
	}
	
	else if (global.stateMove == true)
	{	
		// set the current object clicked to 0
		global.currentTowerClicked = 0;
		
		// destroy tower placement object
		instance_destroy(self);
	}
}
