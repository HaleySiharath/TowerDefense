room_goto(room_mainMenu)

if(room == room_win)
{
	instance_destroy(obj_win_text);
}

if(room == room_lose)
{
	instance_destroy(obj_lose_text);
}

instance_destroy();
