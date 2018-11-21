/// @description displays text onscreen interactable with the player
// removes previous text boxes, meaning each draw will cause the previous
// to disappear
// remember to make a sprite and object for it

// variables to be passed
var text = argument[0];

// do some checking for nonstring and already exists
if text != typeof(string) exit;

// create object
instance_create_depth(view_get_xport(0), (view_get_yport(0)/3), -200, text_box_obj);