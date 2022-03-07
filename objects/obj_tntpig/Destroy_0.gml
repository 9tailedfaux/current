/// @description Insert description here
// You can write your code in this editor

event_inherited()

if (distance_to_object(lum) <= splosion_range) {
	lum.hp--
}

audio_stop_sound(sound)