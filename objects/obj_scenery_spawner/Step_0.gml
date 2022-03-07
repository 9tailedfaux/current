/// @description Insert description here
// You can write your code in this editor
if (canSpawn(last_building.x, last_building.varWidth)){
	if (!irandom(20) || mustSpawn(last_building.x, last_building.varWidth)) {
		last_building = scr_spawn_bldg(true)
	}
}

if (canSpawn(last_building_bg.x, last_building_bg.varWidth)){
	if (!irandom(20) || mustSpawn(last_building_bg.x, last_building_bg.varWidth)) {
		last_building_bg = scr_spawn_bldg(false)
	}
}