/// @description displays text onscreen interactable with the player
// removes previous text boxes, meaning each draw will cause the previous
// to disappear
// rememeber to make a sprite and object for it

// variables to be passed
var text = argument[0];

// do some checking for null or undefined and already exists
if (instance_exists())