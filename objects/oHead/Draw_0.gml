//if (!oCat.bubble) {
//	draw_self()
//}

if (!oCat.bubble){
	sprite_index = sprBank[oCat.sprFacingDir]
	bubbleEnd = false
} else {

	sprite_index = bubbleSprites[oCat.sprFacingDir]
	if (image_index > 7 || bubbleEnd ) {
		bubbleEnd = true
		image_index = 8;
	}

}
draw_self()