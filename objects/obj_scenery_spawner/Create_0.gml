/// @description Insert description here
// You can write your code in this editor
last_building = scr_spawn_bldg(true)
last_building_bg = scr_spawn_bldg(false)
minSpacing = 1
maxSpacing = 4

canSpawn = function(x, width) {
	return(room_width - (x + (width * 16)) >= (minSpacing * 16))
}

mustSpawn = function(x, width) {
	return(room_width - (x + (width * 16)) >= (maxSpacing * 16))
}