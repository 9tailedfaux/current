/// @description Insert description here
// You can write your code in this editor
if (global.time < 3) {
	global.time++
} else {
	global.time = 0
}

if (global.time % 2 == 0) {
	alarm[0] = irandom_range(1200, 3600)
} else {
	alarm[0] = irandom_range(600, 1200)
}

spriteString = global.time

if (global.time == 3) {
	spriteString = 1
}

layer_background_change(layer_background_get_id(layer_get_id("sky")), asset_get_index("bg_sky_" + string(spriteString)))
layer_background_change(layer_background_get_id(layer_get_id("road")), asset_get_index("bg_road_" + string(spriteString)))