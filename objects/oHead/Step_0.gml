target_x = oCat.x
target_y = oCat.y - oCat.sprite_height

x = lerp(x, target_x, spd)
y = lerp(y, target_y, spd)

//x = target_x
//y = target_y