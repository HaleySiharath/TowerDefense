
function NewEnemyChanges()
{
	enemyChanges = {
		speedPercent: 0,
		healthPercent: 0
	}
	return enemyChanges
}

function ApplyChanges(enemy)
{
	enemyId = enemy.enemyId
	ApplyChanges(enemy, 0)
	ApplyChanges(enemy, enemyId)
}

function ApplyChanges(enemy, enemyId)
{
	changes = global.enemyChanges[enemyId]
	enemy.pathSpeed *= changes.speedPercent
	enemy.health *= changes.healthPercent
}