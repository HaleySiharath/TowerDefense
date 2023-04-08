/// @description Start enemy on path

global.currentEnemies++

ApplyChanges(self)

path_start(pt_mp, pathSpeed, path_action_stop, true);

