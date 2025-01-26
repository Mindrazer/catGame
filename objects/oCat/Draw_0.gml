// Draw Health Bar
xPos = camera_get_view_x(view_camera[0])
yPos = camera_get_view_x(view_camera[0])


if ((sprBank = jumpingSprites && image_index != 0) || bubble) {
	sprite_index = jumpingSprites[sprFacingDir]
	image_index = 1;
} else {
	sprite_index = sprBank[sprFacingDir]
}

// set health bar

draw_self()