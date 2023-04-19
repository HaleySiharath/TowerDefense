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
	
	// exit buying mode (show the tower menu and delete the cancle button)
	StopBuy()
}