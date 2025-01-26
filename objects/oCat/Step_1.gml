if (lifeCounter <= 0) {
	camera_width = camera_get_view_width(view_camera[0])
	camera_height = camera_get_view_height(view_camera[0])


	halfViewWidth = camera_width / 2 
	halfViewHeight = camera_height / 2


	camera_x = x - halfViewWidth
	camera_y = y - halfViewHeight
	
	instance_create_layer(camera_x, camera_y, "instances", oEndGame)
	
}