
function StartPrep()
{
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
	global.stateWave = true
	EndPrep()
	global.stateUpgrade = false
	global.currentWave++
}

function EndWave()
{
	global.stateWave = false
	if (global.stateInfo)
	{
		HideInfo()
	}
	StartUpgrade()
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
	global.stateBuy = true
}

function StopBuy()
{
	instance_destroy(obj_btn_cancel)
	global.stateBuy = false
	StartPrep()
}
