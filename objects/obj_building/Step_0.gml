/// @description Insert description here
// You can write your code in this editor

spriteName = "building_" + global.timeNames[global.time] + "_"

if (isBG) spriteName += "bg_"

x -= bldg_speed

if (x + (varWidth * 16) < -16) instance_destroy(self)