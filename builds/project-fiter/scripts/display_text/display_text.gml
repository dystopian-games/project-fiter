/// @description displays text onscreen interactable with the player
// removes previous text boxes, meaning each draw will cause the previous
// to disappear
// @params arg_text: text to be written
// @returns true | false: determines success

// variables to be passed
var arg_text = argument[0];

// check for loss
if (text) {
	return false;
}

// create object
with (instance_create_depth(view_hport[0], (view_wport[0]*2/3), -200, empty)) {
	text = arg_text;
	instance_change(text_box_obj, true);
};
show_message("Anything")
// display text on that