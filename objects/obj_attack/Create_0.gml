/// @description Insert description here
// You can write your code in this editor
limit = room_width
sub = []
for (i = 0; i < 25; i++) {
	sub[i] = irandom_range(0, 3)
}
alarm[0] = 7

calcX = function(i) {
	return (i * 16) + lum.x
}

hittingEnemy = false

charge = 100
chargeRate = 1
dischargeRate = 1
depleted = false
singleFire1 = false

closest = pointer_null

findClosest = function(arrayOfInstances) {
	if (array_length(arrayOfInstances) < 1) return pointer_null
	var closest = arrayOfInstances[0]
	for (var i = 1; i < array_length(arrayOfInstances); i++) {
		if (arrayOfInstances[i].x < closest.x) closest = arrayOfInstances[i]
	}
	return closest
}

id.sound = audio_play_sound(snd_beam, 1, true)
audio_stop_sound(id.sound)