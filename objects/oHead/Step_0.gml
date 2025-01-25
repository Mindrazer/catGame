
if (!oCat.bubble) {
	xspd = (input_check("aim_right")) - (input_check("aim_left"))  * spd

	yspd = (input_check("aim_down")) - (input_check("aim_up")) * spd


	if (xspd != 0 || yspd != 0) {
		// user is controlling the head	
		x += xspd
		y += yspd
	} else {
		// user is not controlling the head
		target_x = oCat.x + 6
		target_y = oCat.y - oCat.sprite_height - 8

		x = lerp(x, target_x, lerpSpd)
		y = lerp(y, target_y, lerpSpd)
	}
} else {

	x = oCat.x - 6
	y = oCat.y - 6
	
}


//x = target_x
//y = target_y