// Determine if enemy is in the camera
camera_width = camera_get_view_width(view_camera[0])
camera_height = camera_get_view_height(view_camera[0])
cameraX = camera_get_view_x(view_camera[0])
cameraY = camera_get_view_y(view_camera[0])
inFrame=false
if (x > cameraX && x < cameraX + camera_width) {

	if (y + sprite_height > cameraY && y < cameraY + camera_height) {

		inFrame = true

	}

}


// If the cat is within range, follow the cat
xspd = 0
yspd = 0
sprIndex = 1
if (inFrame){    //prevents enemy from running across the map to get you
      if (collision_line(x,y,oCat.x,oCat.y,oPlatform,true,true) = noone || collision_line(x,y,oCat.x,oCat.y - 8,oPlatform,true,true) = noone) {
           pointDir=point_direction(x,y,oCat.x,oCat.y);
		   xDir = lengthdir_x(1, pointDir)
		   yDir = lengthdir_y(1, pointDir)
		   xspd = (xDir * enemySpeed)
		   yspd = (yDir * enemySpeed)
		   
		   
		   if (sndCoolDown <=  0) {
			audio_play_sound(snd_DemonStartChase, 1, false);
			sndCoolDown = 240
		   } else {
			sndCoolDown -= 1;
		   }
		   
		   if (xDir < 0) {
				sprIndex = 0
		   } else {
				sprIndex = 1
		   }
		   
		if place_meeting(x + xspd, y, oPlatform) {
	
			var _pixelCheck = sign(xDir);
			while !place_meeting( x+_pixelCheck, y, oPlatform) {
	
				x += _pixelCheck
	
			}
			xspd = 0
		} 


		// handle vertical movement
		// handle vertical collision
		if place_meeting(x+xspd, y+yspd, oPlatform) {
	
			var _pixelCheck = sign(yspd);
			while !place_meeting( x, y+_pixelCheck, oPlatform) {
	
				y += _pixelCheck
	
			}
			yspd = 0
		} 
		   
    }	
}


if (!dying) {
	x += xspd
	y += yspd
	sprite_index = sprBank[sprIndex]
} else {
	
	if (image_index >= sprite_get_number(sprite_index)-1) {
		instance_destroy()
	}
	
	sprite_index = deathBank[sprIndex]
}



