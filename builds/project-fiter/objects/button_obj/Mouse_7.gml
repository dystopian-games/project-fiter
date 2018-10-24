//
if (ev_mouse_enter) {show_message(ev_mouse_enter)};
switch(action) 
{
	// direct to the levels and I didn't make a function because I'm nice. Happens every click
	case 0:
		// cascading if statements to assign or continue
		if (global.doneTutorial = undefined) {
			global.doneTutorial = show_question("Do you want to complete the tutorial?");
		}
		if (global.doneTutorial = 0) {
			// straight to level 1
			room_goto(level_1);
		}
		else {
			// or complete the tutorial
			room_goto(level_tutorial);
		}
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