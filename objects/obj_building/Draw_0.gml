/// @description Insert description here
// You can write your code in this editor

if (drawRest){
	for (i = 0; i < varHeight; i++) {
		for (j = 0; j < varWidth; j++) {
			tempName = spriteName + string(buildingMap[# i, j])
			draw_sprite(asset_get_index(tempName), 0, x + (j * 16), y - (i * 16))
		}
	}
}
