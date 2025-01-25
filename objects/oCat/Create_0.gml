sprFacingDir = 1
standingSprites = [sprLeftStanding, sprRightStanding]
walkingSprites = [sprLeftWalking, sprRightWalking]
jumpingSprites =  [sprLeftStanding, sprRightStanding]
bubbleSprites = [sprTempBubble, sprTempBubble]
hurtSprites = [sprHurt, sprHurt]
sprBank = standingSprites // Start out standing
lifeCounter = 9
vulnCoolDown = 0;
hasBubblePower = true;

bubble = false
bubbleJumpCounter = 3;


xspd = 0;
yspd = 0;

moveSpd = 1;
jumpSpd = -4;
bubbleJumpSpd = -3;
grav = .25
bubbleGrav = 0.15;

//hold for higher jump??