/// @description draw range around building as it moves

// if tower can be placed then show range around the building
if (CheckPlacementAvailable())
{
	// set drawing color
	draw_set_color(c_gray);

	// draw a circle to represent range (moves with tower) 
	draw_circle(x, y, radius, true);
}