// Step Event



// handle vulnerability sprite
if (vulnCoolDown > 0) {
	vulnCoolDown -= 1
}

// Check if the player is on the ground (or close enough)
grounded = place_meeting(x, y + 1, oPlatform); // Assumes you have an obj_ground or platform object

// Horizontal movement

xspd = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpd
yspd += grav

if (keyboard_check_pressed(vk_up) && grounded) {
		yspd = jumpSpd
}

if place_meeting(x+xspd, y, oPlatform) {
	var _pixelCheck = sign(xspd)
	
	while !place_meeting(x + _pixelCheck, y, oPlatform) {
		x += _pixelCheck;
	}
		
	xspd = 0;
	
}

if place_meeting(x + xspd, y+yspd, oPlatform) {
	
	var _pixelCheck = sign(yspd);
	while !place_meeting( x+xspd, y+_pixelCheck, oPlatform) {
	
		y += _pixelCheck
	
	}
	yspd = 0;

}


x += xspd
y += yspd