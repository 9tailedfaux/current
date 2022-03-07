/// @description Insert description here
// You can write your code in this editor

if (x + (sprite_width) < -32) instance_destroy(self)

if (y >= room_height - (sprite_get_height(bg_road_0) * (1/3))) instance_destroy(self)

if (vspeed < global.terminalVelocity && !operational) vspeed += vaccel