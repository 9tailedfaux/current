/// @description Insert description here
// You can write your code in this editor
//visible = mouse_check_button(mb_left) && !depleted

if (mouse_check_button_pressed(mb_left) && !depleted) {
	visible = true
	singleFire1 = true
	id.sound = audio_play_sound(snd_beam, 1, true)
}

if ((mouse_check_button_released(mb_left) || depleted) && singleFire1) {
	visible = false
	singleFire1 = false
	audio_stop_sound(id.sound)
	id.sound = audio_play_sound(snd_beam_end, 1, false)
}

enemies = scr_objects_in_rect(calcX(2), y - sprite_height, room_width, y, obj_enemy)
if (array_length(enemies) > 0) {
	closest = findClosest(enemies)
}
else {
	closest = noone
}
hittingEnemy = bool(closest)
if (closest) limit = min(closest.x, room_width)
else limit = room_width

x = limit - (limit % 16)

if (charge <= 0) depleted = true
if (charge >= 100) depleted = false

if (visible) charge -= dischargeRate
else if (charge < 100) charge += chargeRate