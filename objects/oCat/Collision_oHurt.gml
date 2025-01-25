
// If not already invulnerable. Else we do nothing

if (vulnCoolDown <= 0) {
	// Lose a life
	lifeCounter -= 1
	// Set vuln cooldown
	vulnCoolDown = 180
	// Pop the players bubble
	bubble = false;
}


