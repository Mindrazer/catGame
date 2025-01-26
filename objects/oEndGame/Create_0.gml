audio_stop_all();
audio_play_sound(snd_death, 1, false)

camera_set_view_pos(view_camera[0], x, y)



obj_to_destroy = [obj_arrow, objWinGate, obj_movinglight, obj_lighting_setup, oEnemyFloat, oEnemy1, oCat, oHead, objHealthBar]


var _len = array_length(obj_to_destroy)

for (var i = 0; i < _len; i++) {

	var _obj = obj_to_destroy[i]
	while (instance_exists(_obj)) {
		instance_destroy(_obj)
	}

}


timer = 180