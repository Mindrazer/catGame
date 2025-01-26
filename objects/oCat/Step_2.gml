camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])


halfViewWidth = camera_width / 2 
halfViewHeight = camera_height / 2


camera_x = x - halfViewWidth
camera_y = y - halfViewHeight


// Keep player in room

if (x < 0) {
	x = 0
}
if (x + sprite_width > room_width) {
	x = room_width - sprite_width
}


// Keep Camera in room

if (camera_x < 0) {
	camera_x = 0
}
if (camera_x + camera_width > room_width) {
	camera_x = room_width - camera_width
}

camera_set_view_pos(view_camera[0], camera_x, camera_y)

// Health bar NEEDS to be here
if room == roomSpire {
objHealthBar.x = camera_x
objHealthBar.y = camera_y + 5
objHealthBar.image_index = 9 - lifeCounter
}