/// @description cheats

// add money
if(keyboard_check_pressed(ord("M")))
{
	global.money += 3000;
}

// go to wave 5
if(keyboard_check_pressed(ord("1")))
{
	global.currentWave = 5;
}

// go to wave 10
if(keyboard_check_pressed(ord("2")))
{
	global.currentWave = 10;
}


// go to wave 15
if(keyboard_check_pressed(ord("3")))
{
	global.currentWave = 15;
}


// go to wave 20
if(keyboard_check_pressed(ord("4")))
{
	global.currentWave = 20;
}

// go to wave 25
if(keyboard_check_pressed(ord("5")))
{
	global.currentWave = 25;
}


// go to wave 30
if(keyboard_check_pressed(ord("6")))
{
	global.currentWave = 30;
}



// go to wave 35
if(keyboard_check_pressed(ord("7")))
{
	global.currentWave = 35;
}



// go to wave 40
if(keyboard_check_pressed(ord("8")))
{
	global.currentWave = 40;
}



// go to wave 45
if(keyboard_check_pressed(ord("9")))
{
	global.currentWave = 45;
}


// go to wave 49 final wave
if(keyboard_check_pressed(ord("0")))
{
	global.currentWave = 37;
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