/// @description Insert description here
// You can write your code in this editor

SpawnEnemy(self)

if (global.health <= 0)
{
	room_goto(room_lose)
}
else if (global.stateWaveOver and global.currentEnemies == 0)
{
	EndWave()
}





