//
switch(action) 
{
	//move to the levels and I didn't make a function because I'm nice
	case 0:
		if (global.doneTutorial = undefined) {
			global.doneTutorial = show_question("Do you want to complete the tutorial?");
		}
		if (global.doneTutorial = 0) {
			room_goto(level_1);
		}
		else {
			room_goto(level_tutorial);
		}
		break;
	//look at all the heros
	case 1:
		break;
	//settings page
	case 2:
		break;
	//exit 'butt'on
	case 3:
		game_end();
		break;
}