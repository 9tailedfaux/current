/// @description Insert description here
// You can write your code in this editor
diff = (x - (lum.x + 16)) / 16
diff += !hittingEnemy * 2

draw_sprite_ext(zap_end_1_sheet, sub[5] % 2, lum.x + 32, y, -1, 1, 0, c_white, 1)
for (var i = 2; i <= diff; i++) {
	draw_sprite(zap_beam_1_sheet, sub[i - 2], calcX(i), y)
}
//draw_rectangle(calcX(1), y - sprite_height, room_width, y, false)
if (hittingEnemy) draw_self()