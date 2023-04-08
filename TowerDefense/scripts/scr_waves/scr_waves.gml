
function LoadWaves()
{
	global.waves[0] = tl_testWave
	global.waves[1] = tl_testWave
	global.waves[2] = tl_testWave
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