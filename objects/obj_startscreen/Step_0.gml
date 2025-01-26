if !obj_fade && input_check_pressed("left") || input_check_pressed("right") || input_check_pressed("jump") {
    fade_start = true;
}

if fade_start == true {
    image_alpha -= 0.05;  // Adjust speed as needed
    
    if image_alpha <= 0 {
        instance_destroy();
    }
}