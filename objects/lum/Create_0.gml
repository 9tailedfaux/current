/// @description Insert description here
// You can write your code in this editor

//movement variables

bottom = room_height - (sprite_get_height(bg_road_0) * (5/6))

//jump variables
defJumpAccel = 0.4
jumpSpeed = 5
jumpAccel = defJumpAccel
jumpState = jumpStates.down
jumpStartPos = 0
maxJump = 128
hp = 3

enum jumpStates {
	base,
	up,
	down
}