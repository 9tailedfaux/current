/// @description Insert description here
// You can write your code in this editor
if (!irandom(1)) {
	scr_spawn_enemy(enemyObjects[irandom(array_length(enemyObjects) - 1)])
	if (!irandom(1)) {
		scr_spawn_enemy(enemyObjects[irandom(array_length(enemyObjects) - 1)])
	}
}

alarm[0] = irandom_range(10, 40)