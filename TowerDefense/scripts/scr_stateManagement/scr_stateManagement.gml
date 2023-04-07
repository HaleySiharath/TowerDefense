
function StartPrep()
{
	global.statePrep = true
	global.stateWave = false
	global.stateUpgrade = false
}

function EndPrep()
{
	global.statePrep = false
}

function StartWave()
{
	global.stateWave = true
	global.statePrep = false
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
}

function StartUpgrade()
{
	global.stateUpgrade = true
	global.stateWave = false
	global.statePrep = false
}

function EndUpgrade()
{
	global.stateUpgrade = false
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
	global.stateBuy = true
}

function StopBuy()
{
	global.stateBuy = false
	StartPrep()
}
