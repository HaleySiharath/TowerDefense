
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
	ApplyChange(enemy, 0)
	ApplyChange(enemy, enemyId)
}

function ApplyChange(enemy, enemyId)
{
	changes = global.enemyChanges[enemyId]
	enemy.pathSpeed *= changes.speedPercent
	enemy.health *= changes.healthPercent
}