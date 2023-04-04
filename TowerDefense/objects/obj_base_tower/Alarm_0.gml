/// @description  create bullet

with(instance_create_layer(x, y, "Enemys", obj_base_projectile))
{
	direction = point_direction(x, y, 100, 100);
}
