/// @description Once created, continually listen for key until death
/* This holds the conditions for deletion
 * finished is whether the text box has completed typing
 * finish is to complete the text
 * only display_text() modifies finished
 * only this create event changes finish to true
*/
while (instance_exists(text_box_obj)) {
	if keyboard_check_pressed(vk_space) {
		if (finished) {
			// if it has been finished
			instance_destroy();
		} else {
			finish = true;
		}
	}
}