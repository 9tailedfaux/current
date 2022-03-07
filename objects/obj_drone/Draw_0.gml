/// @description Insert description here
// You can write your code in this editor

draw_self()

if (!operational) {
	draw_sprite(zap_beam_1_sheet, animationRand % 4, x, y + (sprite_height / 3))
	draw_sprite(zap_beam_1_sheet, animationRand % 4, x, y - (sprite_height / 3))
}