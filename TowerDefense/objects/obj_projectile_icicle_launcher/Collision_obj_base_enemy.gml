/// @description damage enemy play animation and destroy object

vspeed = 0;
speed = 0;

frozenArea = instance_create_layer(x, y, "Towers", obj_projectile_frozen);
damageInstance = self.damage
damageInstance *= GetTypeMultiplier(self.flame, self.frost, self.shock, other.flame, other.frost, other.shock)
if (damageInstance < 1 or other.armored)
{
	damageInstance = 1
}
other.health -= damageInstance;
other.frozen = true;
other.pathSpeed = 0.5;

instance_destroy();