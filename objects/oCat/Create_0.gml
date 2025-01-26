// Draw Health Bar
xPos = camera_get_view_x(view_camera[0])
yPos = camera_get_view_x(view_camera[0])


sprFacingDir = 1
standingSprites = [sprLeftStanding, sprRightStanding]
walkingSprites = [sprLeftWalking, sprRightWalking]
jumpingSprites =  [sprLeftJumping, sprRightJumping]
bubbleSprites = [sprBubbleLeft, sprBubbleRight]
hurtSprites = [sprHurtLeft, sprHurtRight]
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

// Create head
instance_create_layer(x, y, "instances", oHead)

// Creat health bar
instance_create_layer(x-120, y-60, "instances", objHealthBar)

//hold for higher jump??