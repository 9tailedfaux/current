/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	if (operational) {
		operational = false
		hspeed = path_speed
		path_end()
		vaccel = 0.2
		vspeed = 0
	}
}

else if (other.visible) hp--