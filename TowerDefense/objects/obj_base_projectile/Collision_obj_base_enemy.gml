/// @description damage enemy play animation and destroy object

damageInstance = self.damage
damageInstance *= GetTypeMultiplier(self.flame, self.frost, self.shock, other.flame, other.frost, other.shock)
if (damageInstance < 1 or other.armored)
{
	damageInstance = 1
}
other.health -= damageInstance;
instance_destroy(self)