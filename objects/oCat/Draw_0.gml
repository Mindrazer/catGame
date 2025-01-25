
if (sprBank = jumpingSprites && image_index != 0) {
	sprite_index = sprBank[sprFacingDir]
	image_index = 1;
} else {
	sprite_index = sprBank[sprFacingDir]
}
draw_self()