// Step event
if (other.attacking) {
    sprite_index = spr_bigdeathright;  // Set damage animation sprite
    image_speed = 4;  // Start animation
    
    audio_play_sound(snd_DemonTakeDamage1, 1, false);
	instance_destroy();
}