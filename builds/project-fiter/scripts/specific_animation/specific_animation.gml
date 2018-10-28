/// specific_animation(instance, start_frame, end_frame, speed)
// plays the frames inbetween the two values, 0 and 5 would play 5 frames
// Non-returning method

//take arguments and reassign them
var start_frame = argument[0];
var end_frame =   argument[1];
var frame_speed = argument[2];

// do some checks first
// if impossible
if (start_frame < 0 or end_frame > (self.image_number - 1)) exit

// if start is larger than end
if (start_frame > end_frame) 
{
	// swap the values :)
	start_frame += end_frame;               // add both values
	end_frame = start_frame - end_frame;    // the initial end_frame is subtracted from both of them
	start_frame = start_frame - end_frame;  // the final start_frame is the total minus the end_frame
}

// set the animation to initial point
self.image_speed = frame_speed;
self.image_index = start_frame;

// now play the frames specified
while (self.image_index < end_frame) {
	if ((self.image_index + 1) = end_frame) 
	{
		show_message("kk");self.image_speed = 0;
		return true;
	}
}