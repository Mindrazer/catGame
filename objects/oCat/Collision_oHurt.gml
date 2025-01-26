
// If not already invulnerable. Else we do nothing

if (vulnCoolDown <= 0) {
	// Lose a life
	lifeCounter -= 1
	// Set vuln cooldown
	vulnCoolDown = 180
	// Pop the players bubble
	bubble = false;
	
	hurtDir = point_direction(other.x, other.y, x, y)
	
	xMult = lengthdir_x(1, hurtDir)
	yMult = lengthdir_y(1, hurtDir)
	
	xspd = xMult*jumpSpd*-1/2
	yspd = -4
}

