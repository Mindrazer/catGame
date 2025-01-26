    var prev_x = x;
    
    // Horizontal movement
    if (direction == 1) {
        x += h_speed;
        if (x >= x_end) {
            direction = -1;
        }
    } else {
        x -= h_speed;
        if (x <= x_start) {
            direction = 1;
        }
    }
    
    // Calculate platform movement delta
    var move_delta = x - prev_x;
    
    // Precise collision and movement
    with (oCat) {
        // Check if player is on top of the platform
        if (place_meeting(x, y + 1, other)) {
            // Move player horizontally with platform
            x += move_delta;
            
            // Ensure player stays on platform
            if (!place_meeting(x, y, other)) {
                x = other.x + (x - other.x);
            }
        }
    }
