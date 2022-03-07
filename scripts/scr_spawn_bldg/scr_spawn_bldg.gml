// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_bldg(fg){
	layerName = "buildings_"
	if (fg) {
		layerName += "FG"
	} else {
		layerName += "BG"
	}
	newBldg = instance_create_layer(room_width + 16, room_height - sprite_get_height(bg_road_0) - 16, layerName, obj_building)
	newBldg.isBG = !fg
	return newBldg
}