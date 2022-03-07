/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

hp = 10
move_speed = 1.2
splosion_range = 16

value = 1

bottom = room_height - (sprite_get_height(bg_road_0) * (5/6))

//jump variables
jumpSpeed = irandom_range(4, 7)
jumpAccel = 0.4
jumpState = jumpStates.down
jumpStartPos = 0

splode = function() {
	instance_destroy(self)
}

sound = audio_play_sound(asset_get_index("snd_pig_" + string(irandom(3))), 1, false)