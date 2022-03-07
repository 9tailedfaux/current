// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_objects_in_rect(x1, y1, x2, y2, object){
	var c = 0
	var total = instance_number(object)
	options = []
	if (total < 1) return options
	
	for (var i = 0; i < total; i++) {
		instance = instance_find(object, i)
		if (rectangle_in_rectangle(
			x1, 
			y1, 
			x2, 
			y2, 
			instance.bbox_left, 
			instance.bbox_top, 
			instance.bbox_right, 
			instance.bbox_bottom) > 0){
				
			options[c] = instance
			c++
		}
	}
	return options
}