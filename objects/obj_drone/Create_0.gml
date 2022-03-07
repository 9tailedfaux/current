/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

move_speed = -1.7
hp = 2
value = 3

y = irandom_range(-16, 16)

path_start(pth_drone, move_speed * global.moveSpeed, path_action_continue, false)

alarm[0] = 4

operational = true

vaccel = 0
animationRand = 0

id.sound = audio_play_sound(snd_drone, 1, false)

audio_sound_pitch(id.sound, irandom_range(0, 5))
audio_sound_gain(id.sound, 0.2, 0)