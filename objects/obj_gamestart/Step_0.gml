camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])


halfViewWidth = camera_width / 2 
halfViewHeight = camera_height / 2


camera_x = x - halfViewWidth
camera_y = y - halfViewHeight + 11

// In the Step event of the SPECIFIC OBJECT (not a parent object)
if place_meeting(x, y, oCat) {
    // Check if no arrow already exists for THIS specific object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if !my_arrow {
        instance_create_layer(x, y - 16, "Popups", obj_arrow);
    }
    
    if input_check_pressed("accept") {
        counter += 1
		audio_play_sound(snd_catmeow2, 1, false);
        }
    } else {
    // Destroy arrow and blank specific to THIS object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if my_arrow {
        with(my_arrow) instance_destroy();
    }
}
	
if counter >= 4 {
    instance_create_layer(camera_x, camera_y, "Popups", obj_opening);
	audio_play_sound(snd_death, 1, false);
    if (obj_opening.image_index >= obj_opening.image_number - 1) {
        room_goto(roomSpire);
    }
}