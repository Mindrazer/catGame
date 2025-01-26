// In the Step event of the SPECIFIC OBJECT (not a parent object)
if place_meeting(x, y, oCat) {
    // Check if no arrow already exists for THIS specific object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if !my_arrow {
        instance_create_layer(x, y - 16, "Popups", obj_arrow);
    }
    
    if input_check_pressed("accept") {
        //Win Game Screen
		
		
		
    }
} else {
    // Destroy arrow and blank specific to THIS object
    var my_arrow = instance_place(x, y - 16, obj_arrow);
    
    if my_arrow {
        with(my_arrow) instance_destroy();
    }
}