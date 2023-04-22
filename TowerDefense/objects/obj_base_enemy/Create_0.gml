/// @description Start enemy on path

image_xscale = 0.5
image_yscale = 0.5

damaged = false;

global.currentEnemies++

ApplyChanges(self);

path_start(pt_mp, pathSpeed, path_action_stop, true);

