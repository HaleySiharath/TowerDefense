/// @description Complete either move or delete task

pos = FindNearestPlacement();
xPos = pos[0];
yPos = pos[1];

// moving object
if(global.stateMove == true)
{
	// if no other tower is selected then chose current tower
	if(global.currentTowerClicked == 0)
	{
		global.currentTowerClicked = self;
		
		// remove from current grid space
		global.grid[xPos][yPos] = false;
		
		// create an instance of towerplacement to move building and destroy current building
		towerMove = instance_create_layer(x, y, "Towers", obj_towerPlacement);
		towerMove.tower_object = type;
		towerMove.radius = self.range;
		
		// destroy previous tower
		instance_destroy(global.currentTowerClicked)
	}
}

// deleting object
if(global.stateDelete == true)
{
	// remove from current grid space
	global.grid[xPos][yPos] = false;
	// get money back for selling tower
	global.money += cost / 2;
		
	instance_destroy(self);
}
