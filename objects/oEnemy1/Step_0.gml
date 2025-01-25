// Determine if enemy is in the camera
camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])
cameraX = camera_get_view_x(view_camera[0])
cameraY = camera_get_view_y(view_camera[0])
inFrame=false
if (x > cameraX && x < cameraX + camera_width) {

	if (y > cameraY && x < cameraY + camera_height) {

		inFrame = true

	}

}


// If the cat is within range, follow the cat

if (inFrame){    //prevents enemy from running across the map to get you
      if (collision_line(x,y,oCat.x,oCat.y,oPlatform,true,true) = noone) {
           direction=point_direction(x,y,oCat.x,oCat.y);
           speed= enemySpeed;
    }
}