
function LoadWaves()
{
	global.waves[0] = wave1
	global.waves[1] = wave2
	global.waves[2] = wave3
	global.waves[3] = wave4
	global.waves[4] = wave5
	global.waves[5] = wave6
	global.waves[6] = wave7
	global.waves[7] = wave8
	global.waves[8] = wave9
	global.waves[9] = wave10
	global.waves[10] = wave11
	global.waves[11] = wave12
	global.waves[12] = wave13
	global.waves[13] = wave14
	global.waves[14] = wave15
	global.waves[15] = wave16
	global.waves[16] = wave17
	global.waves[17] = wave18
	global.waves[18] = wave19
	global.waves[19] = wave20
	global.waves[20] = wave21
	global.waves[21] = wave22
	global.waves[22] = wave23
	global.waves[23] = wave24
	global.waves[24] = wave25
	global.waves[25] = wave26
	global.waves[26] = wave27
	global.waves[27] = wave28
	global.waves[28] = wave29
	global.waves[29] = wave30
	global.waves[30] = wave31
	global.waves[31] = wave32
	global.waves[32] = wave33
	global.waves[33] = wave34
	global.waves[34] = wave35
	global.waves[35] = wave36
	global.waves[36] = wave37
	global.waves[37] = wave38
	global.waves[38] = wave39
	global.waves[39] = wave40
	global.waves[40] = wave41
	global.waves[41] = wave42
	global.waves[42] = wave43
	global.waves[43] = wave44
	global.waves[44] = wave45
	global.waves[45] = wave46
	global.waves[46] = wave47
	global.waves[47] = wave48
	global.waves[48] = wave49
	global.waves[49] = wave50
}

function SpawnEnemy(spawner)
{
	if (array_length(global.toSpawn) != 0)
	{
		instance_create_layer(spawner.x, spawner.y, "Enemys", global.enemyList[global.toSpawn[0]])
		array_delete(global.toSpawn, 0, 1)
	}
}

function AddToSpawn(enemyId)
{
	array_insert(global.toSpawn, array_length(global.toSpawn), enemyId)
}