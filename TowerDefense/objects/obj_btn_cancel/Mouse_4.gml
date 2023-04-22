// based on current state go back to previous state
if(global.stateBuy == true)
{
	StopBuy()
}

else if(global.stateMove == true && global.currentTowerClicked == 0)
{
	
	StopMove()
}

else if(global.stateDelete == true)
{
	StopDelete()
}

else
{
	HideInfo();
	room_goto(room_gameplay);
}