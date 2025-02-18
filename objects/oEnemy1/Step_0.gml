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
targetX = 10000;
xDir = 1;
if (inFrame){    //prevents enemy from running across the map to get you
      if (collision_line(x,y,oCat.x,oCat.y,oPlatform,true,true) = noone) {
           pointDir=point_direction(x,y,oCat.x,oCat.y);
		   xDir = sign(lengthdir_x(1, pointDir))
		   targetX = x + (xDir * enemySpeed)
		   
		   
		   // Dont let it walk off huge cliffs. Let it fall down a couple pixels
		   for (var _i = 1; _i <= 10; _i++) {
			   if (xDir = -1) {
					if (!place_meeting(targetX - sprite_width, y+_i, oPlatform)) {
						targetX = x
					} else {
						targetX = x + (xDir * enemySpeed)
						break;
					}
			   } else {		   
				   if (!place_meeting(targetX + sprite_width, y+_i, oPlatform)) {
						targetX = x
				   } else {
					    targetX = x + (xDir * enemySpeed)
						break;
				   }
			   }
		   }
		   if (xDir < 0) {
				sprite_index = sprBank[0]
		   } else {
				sprite_index = sprBank[1]
		   }
		   
    }	
}



if (targetX != 10000) {
	if place_meeting(targetX, y, oPlatform) {
	
		var _pixelCheck = sign(xDir);
		while !place_meeting( x+_pixelCheck, y, oPlatform) {
	
			x += _pixelCheck
	
		}

	}	else {
		x = targetX
	}
} 

// handle vertical movement
// handle vertical collision
yspd += grav
if place_meeting(x, y+yspd, oPlatform) {
	
	var _pixelCheck = sign(yspd);
	while !place_meeting( x, y+_pixelCheck, oPlatform) {
	
		y += _pixelCheck
	
	}
	yspd = 0;

}
y += yspd
