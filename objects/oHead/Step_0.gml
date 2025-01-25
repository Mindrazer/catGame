target_x = oCat.x + 6
target_y = oCat.y - oCat.sprite_height - 8

x = lerp(x, target_x, spd)
y = lerp(y, target_y, spd)

//x = target_x
//y = target_y