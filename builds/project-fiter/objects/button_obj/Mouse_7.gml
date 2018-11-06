// take the action variable of the instance and use it
switch(action) 
{
	// direct to the levels and I didn't make a function because I'm nice. Happens every click
	case 0:
		// continue to gameplay
		room_goto(level_1);
		break;
	//look at all the heros
	case 1:
		break;
	//settings page
	case 2:
		break;
	//exit button
	case 3:
		game_end();
		break;
}