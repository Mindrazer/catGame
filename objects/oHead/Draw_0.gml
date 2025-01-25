//if (!oCat.bubble) {
//	draw_self()
//}

if (!oCat.bubble){
	
	if (attacking) {
		// attacking
		sprite_index = swordSprites[sprFacingDir]
		if (image_index >= attackingSprites - 1) {
			attacking = false
		}
	} else {
		// Not attacking, not bubbling
		if (!following) {
			sprite_index = defaultSprites[sprFacingDir]
		} else {
			sprite_index = defaultSprites[oCat.sprFacingDir]
		}
		bubbleEnd = false
	}
} else {

	sprite_index = bubbleSprites[oCat.sprFacingDir]
	if (image_index > 7 || bubbleEnd ) {
		bubbleEnd = true
		image_index = 8;
	}

}
draw_self()