/// @description Insert description here
// You can write your code in this editor


global.menuItem -= 1;

if(global.menuItem == -1)
{
	global.menuItem = 9;
}

switch(global.menuItem)
{
	case 0:
		// viewport 1 camera x = -1500 y = 289
		camera_set_view_pos(view_camera[1], -1500, 289);
	break;
	case 1:
		// viewport 1 camera x = -1200 y = 289
		camera_set_view_pos(view_camera[1], -1200, 289);
	break;
	case 2:
		// viewport 1 camera x = -900 y = 289
		camera_set_view_pos(view_camera[1], -900, 289);
	break;
	case 3:
		// viewport 1 camera x = -600 y = 289
		camera_set_view_pos(view_camera[1], -600, 289);
	break;
	case 4:
		// viewport 1 camera x = -300 y = 289
		camera_set_view_pos(view_camera[1], -300, 289);
	break;
	case 5:
		// viewport 1 camera x = -1500 y = 615
		camera_set_view_pos(view_camera[1], -1500, 615);
	break;
	case 6:
		// viewport 1 camera x = -1200 y = 615
		camera_set_view_pos(view_camera[1], -1200, 615);
	break;
	case 7:
		// viewport 1 camera x = -900 y = 615
		camera_set_view_pos(view_camera[1], -900, 615);
	break;
	case 8:
		// viewport 1 camera x = -600 y = 615
		camera_set_view_pos(view_camera[1], -600, 615);
	break;
	case 9:
		// viewport 1 camera x = -300 y = 615
		camera_set_view_pos(view_camera[1], -300, 615);
	break;
	default:
	break;
}