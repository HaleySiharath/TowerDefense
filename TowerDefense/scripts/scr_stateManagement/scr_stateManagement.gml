
function StartPrep()
{
	global.stateWaveOver = false
	global.statePrep = true
	global.stateWave = false
	global.stateUpgrade = false
	
	
	
	// create all buttons for menu
	button1 = instance_create_layer(1620, 240, "UI", obj_btn_newTower);
	button1.tower_sprite = spr_canon;
	button1.tower_object = obj_tower_cannon;
	button1.tower_name = "Cannon";
	button1.tower_price = 100;
	button1.tower_radius = 200;

	button2 = instance_create_layer(1800, 240, "UI", obj_btn_newTower);
	button2.tower_sprite = spr_crossbow;
	button2.tower_object = obj_tower_crossbow;
	button2.tower_name = "Crossbow";
	button2.tower_price = 100;
	button2.tower_radius = 100;
	
	button3 = instance_create_layer(1620, 420, "UI", obj_btn_newTower);
	button3.tower_sprite = spr_flamethrower;
	button3.tower_object = obj_tower_flamethrower;
	button3.tower_name = "Flamethrower";
	button3.tower_price = 100;
	button3.tower_radius = 100;
	
	button4 = instance_create_layer(1800, 420, "UI", obj_btn_newTower);
	button4.tower_sprite = spr_freezer;
	button4.tower_object = obj_tower_freezer;
	button4.tower_name = "Freezer";
	button4.tower_price = 100;
	button4.tower_radius = 100;
	
	button5 = instance_create_layer(1620, 600, "UI", obj_btn_newTower);
	button5.tower_sprite = spr_icicle_launcher;
	button5.tower_object = obj_tower_icicle_launcher;
	button5.tower_name = "Icicle Launcher";
	button5.tower_price = 100;
	button5.tower_radius = 100;
	
	button6 = instance_create_layer(1800, 600, "UI", obj_btn_newTower);
	button6.tower_sprite = spr_minigun;
	button6.tower_object = obj_tower_minigun;
	button6.tower_name = "Minigun";
	button6.tower_price = 100;
	button6.tower_radius = 100;
	
	button7 = instance_create_layer(1620, 780, "UI", obj_btn_newTower);
	button7.tower_sprite = spr_railgun;
	button7.tower_object = obj_tower_railgun;
	button7.tower_name = "Railgun";
	button7.tower_price = 100;
	button7.tower_radius = 100;
	
	button8 = instance_create_layer(1800, 780, "UI", obj_btn_newTower);
	button8.tower_sprite = spr_shotgun;
	button8.tower_object = obj_tower_shotgun;
	button8.tower_name = "Shotgun";
	button8.tower_price = 100;
	button8.tower_radius = 100;
	
	button9 = instance_create_layer(1620, 960, "UI", obj_btn_newTower);
	button9.tower_sprite = spr_sniper;
	button9.tower_object = obj_tower_sniper;
	button9.tower_name = "Sniper";
	button9.tower_price = 100;
	button9.tower_radius = 100;
	
	button10 = instance_create_layer(1800, 960, "UI", obj_btn_newTower);
	button10.tower_sprite = spr_zapper;
	button10.tower_object = obj_tower_zapper;
	button10.tower_name = "Zapper";
	button10.tower_price = 100;
	button10.tower_radius = 100;
	
	
	// start wave button
	instance_create_layer(1590, 120, "UI", obj_btn_nextWave);
	
	// move object button
	instance_create_layer(1711, 120, "UI", obj_btn_moveTower);
	
	// delete object button
	instance_create_layer(1833, 120, "UI", obj_btn_delete);
}

function EndPrep()
{
	global.statePrep = false
	instance_destroy(obj_btn_newTower)
	instance_destroy(obj_btn_nextWave)
	instance_destroy(obj_btn_moveTower)
	instance_destroy(obj_btn_delete)
}

function StartWave()
{
	global.stateWaveOver = false
	global.stateWave = true
	EndPrep()
	global.stateUpgrade = false
	instance_create_layer(0, 0, "Enemys", obj_base_spawner)
}

function EndWave()
{
	instance_destroy(obj_base_spawner)
	global.stateWave = false
	if (global.stateInfo)
	{
		HideInfo()
	}
	if (global.currentWave == array_length(global.waves))
	{
		room_goto(room_win)
	}
	else
	{
		StartUpgrade()
	}
}

function StartUpgrade()
{
	global.stateUpgrade = true
	global.stateWave = false
	global.statePrep = false
	EndUpgrade()
}

function EndUpgrade()
{
	global.stateUpgrade = false
	StartPrep()
}

function ShowInfo()
{
	global.stateInfo = true
}

function HideInfo()
{
	global.stateInfo = false
}

/*function StartMove()
{
	EndPrep()
	global.stateMove = true
}

function StopMove()
{
	global.stateMove = false
	StartPrep()
}*/

function StartBuy(objTower, objRadius)
{
	EndPrep()
	instance_create_layer(1620, 780, "UI", obj_btn_cancel)
	placementObj = instance_create_layer(0, 0, "Towers", obj_towerPlacement)
	placementObj.tower_object = objTower;
	placementObj.radius = objRadius;
	global.stateBuy = true
}

function StopBuy()
{
	instance_destroy(obj_btn_cancel)
	instance_destroy(obj_towerPlacement)
	global.stateBuy = false
	StartPrep()
}

// allow player to move objects
function StartMove()
{
	// destroy buttons on screen
	EndPrep()
	instance_create_layer(1620, 780, "UI", obj_btn_cancel)
	global.stateMove = true;
	
}

// allow players to exit object moving
function StopMove()
{
	// set the currentTowerClicked
	global.currentTowerClicked = 0;
	
	instance_destroy(obj_btn_cancel)
	instance_destroy(obj_towerPlacement)
	global.stateMove = false
	StartPrep();
}

// allow player to delete current items
function StartDelete()
{
	EndPrep()
	instance_create_layer(1620, 780, "UI", obj_btn_cancel)
	global.stateDelete = true
}

// allow player to exit delete mode
function StopDelete()
{
	instance_destroy(obj_btn_cancel)
	instance_destroy(obj_towerPlacement)
	global.stateDelete = false
	StartPrep()
}