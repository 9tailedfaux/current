/// @description Insert description here
// You can write your code in this editor
randomize()
global.moveSpeed = 2
global.time = 0
global.terminalVelocity = 5
alarm[0] = irandom_range(600, 3600)

global.timeNames = ["day", "mid", "night", "mid"]

road = layer_get_id("road")
layer_y(road, room_height - sprite_get_height(bg_road_0))
layer_hspeed(road, global.moveSpeed * -1)

sound = audio_play_sound(snd_music, 0, true)

score = 0