global.statePrep = true // whether the game is in the prep state
global.stateWave = false // whether the game is in the wave state
global.stateUpgrade = false // whether the game is in the upgrade state
global.stateInfo = false // whether the player has the info window displayed
global.stateMove = false // whether the player is currently moving a tower
global.stateBuy = false // whether the player is currently buying a tower
global.stateMove = false // player is moving towers
global.stateWin = false // whether the player has won
global.stateLose = false // whether the player has lost
global.stateWaveOver = false
global.stateDelete = false // whether the game is delete mode


audio_play_sound(sound_background, 10, true);

global.menuItem = 1;

global.currentWave = 0 // the current wave that the player is on
global.health = 10 // the current amount of health the player has
global.money = 200 // the current amount of money (souls) the player has

global.currentTowerClicked = 0 // used to store current tower clicked

// create grid for tower placement and enemy pathing
for (i = 0; i < 18; i++)
{
	for (j = 0; j < 18; j++)
	{
		global.grid[i][j] = false
	}
}

// Store enemy changes from upgrades
global.enemyChanges = []
for (i = 0; i <= 10; i++)
{
	array_insert(global.enemyChanges, 0, NewEnemyChanges())
}

UpdateEnemyPath()

global.waves = []
LoadWaves()

global.toSpawn = []

global.enemyList = []
LoadEnemyList()

global.currentEnemies = 0

StartPrep()