/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (x <= lum.x) {
	splode()
}

jump = function() {
	if (jumpState == jumpStates.base) {
		jumpStartPos = y
		y -= 1
		vspeed = -1 * jumpSpeed
		jumpState = jumpStates.up
		sound = audio_play_sound(asset_get_index("snd_pig_" + string(irandom(3))), 1, false)
	}
}

if (!irandom(60)) {
	jump()
}

if (jumpState == jumpStates.up) {
	if (vspeed > 0) {
		jumpState = jumpStates.down
	}
}

if (jumpState != jumpStates.base) {
	if (vspeed < global.terminalVelocity) vspeed += jumpAccel
	if (y >= bottom) {
		y = bottom
		vspeed = 0
		jumpState = jumpStates.base
	}
}