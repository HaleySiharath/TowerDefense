
function StartPrep()
{
	global.stateWaveOver = false
	global.statePrep = true
	global.stateWave = false
	global.stateUpgrade = false
	instance_create_layer(1620, 480, "UI", obj_btn_newTower)
	instance_create_layer(1620, 780, "UI", obj_btn_nextWave)
}

function EndPrep()
{
	global.statePrep = false
	instance_destroy(obj_btn_newTower)
	instance_destroy(obj_btn_nextWave)
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

function StartMove()
{
	EndPrep()
	global.stateMove = true
}

function StopMove()
{
	global.stateMove = false
	StartPrep()
}

function StartBuy()
{
	EndPrep()
	instance_create_layer(1620, 780, "UI", obj_btn_cancel)
	instance_create_layer(0, 0, "Towers", obj_towerPlacement)
	global.stateBuy = true
}

function StopBuy()
{
	instance_destroy(obj_btn_cancel)
	instance_destroy(obj_towerPlacement)
	global.stateBuy = false
	StartPrep()
}
