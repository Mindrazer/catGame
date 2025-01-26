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
           pointDir=point_direction(x,y,oCat.x,oCat.y);
		   xDir = lengthdir_x(1, pointDir)
		   yDir = lengthdir_y(1, pointDir)
		   targetX = x + (xDir * enemySpeed)
		   targetY = y + (yDir * enemySpeed)
		   
		   if (xDir < 0) {
				sprite_index = sprBank[0]
		   } else {
				sprite_index = sprBank[1]
		   }
		   
		if place_meeting(targetX, y, oPlatform) {
	
			var _pixelCheck = sign(xDir);
			while !place_meeting( x+_pixelCheck, y, oPlatform) {
	
				x += _pixelCheck
	
			}

		} else {
			x = targetX
		}


		// handle vertical movement
		// handle vertical collision
		if place_meeting(x, y+yspd, oPlatform) {
	
			var _pixelCheck = sign(yspd);
			while !place_meeting( x, y+_pixelCheck, oPlatform) {
	
				y += _pixelCheck
	
			}
		} else {
			y = targetY
		}
		   
    }	
}



