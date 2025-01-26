// Step event
if (other.attacking && !dying) {
	dying = true;
	image_index = 0;
	audio_play_sound(snd_DemonTakeDamage1, 1, false);
}