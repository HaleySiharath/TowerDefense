pos = FindNearestPosition()
x = pos[0]
y = pos[1]
if (CheckPlacementAvailable())
{
	show_debug_message("yes")
	image_index = 0
}
else
{
	show_debug_message("no")
	image_index = 1
}