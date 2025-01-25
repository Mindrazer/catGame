//if (!oCat.bubble) {
//	draw_self()
//}

if (!oCat.bubble){
	
	if (attackingImageIndex >= 1) {
		// attacking
		sprite_index = swordSprites[sprFacingDir]
		image_index = attackingImageIndex
		attackingImageIndex += 1
		if (attackingImageIndex >= attackingSprites) {
			attackingImageIndex = 0
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