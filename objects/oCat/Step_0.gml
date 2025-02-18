// Step Event



// handle vulnerability sprite
if (vulnCoolDown > 0) {
	vulnCoolDown -= 1
}


// Check if the player is on the ground (or close enough)
grounded = place_meeting(x, y + 1, oPlatform); // Assumes you have an obj_ground or platform object
if grounded {bubbleCoolDown = 0}

if (bubbleCoolDown > 0) {
	bubbleCoolDown -= 1;
	hasBubblePower = false;
} else {
	hasBubblePower = true;
}

// Are we bubbling?
if (input_check_pressed("accept") && !grounded && !bubble && vulnCoolDown <= 0 && hasBubblePower && room == roomSpire) {
	bubble = true
	oHead.image_index = 0
	bubbleJumpCounter = 3;
	bubbleCoolDown = 180;
	audio_play_sound(snd_ShadowBubble, 1, false);
} else if (grounded) {
	bubble = false
} else if (bubbleJumpCounter <= 0) {
	bubble = false;
}

// Horizontal movement
if (vulnCoolDown < 170) {
	xspd = (input_check("right")) - (input_check("left"))  * moveSpd
}

//horizontal movement sound
if (grounded && (input_check("right") || input_check("left"))) {
    if (!audio_is_playing(snd_catwalk)) {
        audio_play_sound(snd_catwalk, 1, false);
    }
}

// Vertical Movement
if (!bubble) {
	// Non bubble vertical movement
	yspd += grav
	if (input_check_pressed("jump") && grounded) {
			yspd = jumpSpd
			audio_play_sound(snd_catjump, 1, false);
	}
} else {
	// Bubble vertical movement
	yspd += bubbleGrav
	if (input_check_pressed("jump")) {
			yspd = bubbleJumpSpd
			bubbleJumpCounter -= 1;
			audio_play_sound(snd_ShadowBubble, 1, false);
	}
}


// Flip Sprite depending on which way it should face 
if (input_check("left")) {
	sprFacingDir = 0
} else if (input_check("right")) {
	sprFacingDir = 1
}

// handle horizontal collision
if place_meeting(x+xspd, y, oPlatform) {
	var _pixelCheck = sign(xspd)
	
	while !place_meeting(x + _pixelCheck, y, oPlatform) {
		x += _pixelCheck;
	}
		
	xspd = 0;
	
}


// handle vertical collision
if place_meeting(x + xspd, y+yspd, oPlatform) {
	
	var _pixelCheck = sign(yspd);
	while !place_meeting( x+xspd, y+_pixelCheck, oPlatform) {
	
		y += _pixelCheck
	
	}
	yspd = 0;

}

/// Move the cat
x += xspd
y += yspd


// Determine if the cat is standing, walking, or jumping
if (vulnCoolDown > 0) {
	sprBank = hurtSprites
} else if (bubble) {
	sprBank = bubbleSprites
} else if (!grounded) {
	// Not on the ground, using jumping sprite bank
	sprBank = jumpingSprites
} else if (x != xprevious) {
	// Whow knew gamemaker just kept track of xprevious //lol
	sprBank = walkingSprites
} else {

	sprBank = standingSprites
	
}