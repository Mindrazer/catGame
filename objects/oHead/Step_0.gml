
// Decrement Attack Cooldown
if (attackCoolDown > 0) {
	attackCoolDown -= 1
}

if (!oCat.bubble) {
	xspd = (input_check("aim_right")) - (input_check("aim_left"))  * spd

	yspd = (input_check("aim_down")) - (input_check("aim_up")) * spd
	
	if (followingCoolDown >= 0){
		followingCoolDown -= 1
	}

	if ((xspd != 0 || yspd != 0) ) {
		following = false
		followingCoolDown = 45
		
		// user is controlling the head	
		x += xspd
		y += yspd
		
		// Determine which way the head should face independent of the cat
		// Flip Sprite depending on which way it should face 
		if (input_check("aim_left")) {
			sprFacingDir = 0
		} else if (input_check("aim_right")) {
			sprFacingDir = 1
		}
		
	} else if (!attacking && followingCoolDown <= 0) {
		following = true
		// Head is not bein controlled AND is not attacking. Return to Cat
		target_x = oCat.x + 6
		target_y = oCat.y - oCat.sprite_height - 8

		x = lerp(x, target_x, lerpSpd)
		y = lerp(y, target_y, lerpSpd)
	}
	
	if (input_check_pressed("shoot") && !attacking && !oCat.bubble && attackCoolDown == 0) {
		// start attack animation
		attacking=true
		attackCoolDown = 180
		following = false
		followingCoolDown = 45
	}
	
	// Use default sprites and follow cat
	if (!attacking) {
		sprBank = defaultSprites
	}
} else {
	
	// bubble
	x = oCat.x - 6
	y = oCat.y - 6
	
}


//x = target_x
//y = target_y