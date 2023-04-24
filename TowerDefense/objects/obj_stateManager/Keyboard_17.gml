/// @description cheats

// add money
if(keyboard_check_pressed(ord("M")))
{
	global.money += 3000;
}

// go to wave 5
if(keyboard_check_pressed(ord("1")))
{
	global.wave = 5;
}

// go to wave 10
if(keyboard_check_pressed(ord("2")))
{
	global.wave = 10;
}


// go to wave 15
if(keyboard_check_pressed(ord("3")))
{
	global.wave = 15;
}


// go to wave 20
if(keyboard_check_pressed(ord("4")))
{
	global.wave = 20;
}

// go to wave 25
if(keyboard_check_pressed(ord("5")))
{
	global.wave = 25;
}


// go to wave 30
if(keyboard_check_pressed(ord("6")))
{
	global.wave = 30;
}



// go to wave 35
if(keyboard_check_pressed(ord("7")))
{
	global.wave = 35;
}



// go to wave 40
if(keyboard_check_pressed(ord("8")))
{
	global.wave = 40;
}



// go to wave 45
if(keyboard_check_pressed(ord("9")))
{
	global.wave = 45;
}



// go to lose screen
if(keyboard_check_pressed(ord("L")))
{
	room_goto(room_lose)
}


// go to win screen
if(keyboard_check_pressed(ord("W")))
{
	room_goto(room_win)
}