// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_spawn_enemy(enemyObject){
	instance_create_layer(room_width + 16, room_height - 64, "Instances", enemyObject)
}