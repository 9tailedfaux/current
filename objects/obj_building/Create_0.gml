/// @description Insert description here
// You can write your code in this editor
varWidth = irandom_range(3, 8)
varHeight = irandom_range(3, 15)
bldgType = 0
isBG = false
alarm[0] = 2
buildingMap = ds_grid_create(varHeight, varWidth)
ds_grid_clear(buildingMap, 0)

bldg_speed = 2
bldg_speed = global.moveSpeed

drawRest = false

generateBuildingMap = function() {
	for (i = 0; i < varHeight; i++) {
		for (j = 0; j < varWidth; j++) {
			num = 0
			
			if (i == 0) { //it is the bottom level
				num += 8
			} 
			else if (i == varHeight - 1) { //it is the top level
				num += 1
			}
			else { //it is somewhere in the middle
				num += 4
				if (j == varWidth - 1) {
					num += 1
				}
			}
			
			if (j == varWidth - 1) {
				num += 2
			}
			else if (j > 0) {
				num += 1
			}
			
			if (isWindow(i, j, bldgType)) {
				num += 1
			}
			
			buildingMap[# i, j] = num
		}
	}
}

isWindow = function(i, j, type) {
	return (i > 0 && i < varHeight - 1 && j > 0 && j < varWidth - 1)
}