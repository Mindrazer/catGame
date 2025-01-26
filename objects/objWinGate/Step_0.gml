// In the Step event of the SPECIFIC OBJECT (not a parent object)
if place_meeting(x, y, oCat) {
    // Check if no arrow already exists for THIS specific object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if !my_arrow {
        instance_create_layer(x, y - 16, "instances", obj_arrow);
    }
    
    if input_check_pressed("accept") {
        //Win Game Screen
		camera_width = camera_get_view_width(view_camera[0])
		camera_height = camera_get_view_height(view_camera[0])


		halfViewWidth = camera_width / 2 
		halfViewHeight = camera_height / 2


		camera_x = oCat.x - halfViewWidth
		camera_y = oCat.y - halfViewHeight
		layer_destroy("Assets_2")
		instance_create_layer(camera_x, camera_y, "instances", oWinGame)
		
		
    }
} else {
    // Destroy arrow and blank specific to THIS object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if my_arrow {
        with(my_arrow) instance_destroy();
    }
}