// Movement logic
var move_x = 0;
var move_y = 0;

// Check input for movement
if (input_check("left")) {
    move_x -= 1;
}
if (input_check("right")) {
    move_x += 1;
}
if (input_check("up")) {
    move_y -= 1;
}
if (input_check("down")) {
    move_y += 1;
}

// Normalize diagonal movement
var magnitude = point_distance(0, 0, move_x, move_y);
if (magnitude > 0) {
    move_x /= magnitude;
    move_y /= magnitude;
}

// Apply movement
x += move_x * move_speed;
y += move_y * move_speed;
