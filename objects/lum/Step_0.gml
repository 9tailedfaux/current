/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_space)) {
	if (jumpState == jumpStates.base) {
		jumpStartPos = y
		y -= 1
		vspeed = -1 * jumpSpeed
		jumpState = jumpStates.up
		sprite_index = babi_jump
		
		jumpAccel = 0
	}
}

if (jumpState == jumpStates.up) {
	if (abs(jumpStartPos - y) >= maxJump || keyboard_check_released(vk_space)) {
		jumpAccel = defJumpAccel
	}
	if (vspeed > 0) {
		jumpState = jumpStates.down
		sprite_index = babi_fall
	}
}

if (jumpState != jumpStates.base) {
	if (vspeed < jumpSpeed) vspeed += jumpAccel
	if (y >= bottom) {
		y = bottom
		vspeed = 0
		jumpState = jumpStates.base
		sprite_index = sp_babi_walk
	}
}

if (hp < 0) {
	audio_stop_all()
	room_restart()
}