/// @description Insert description here
// You can write your code in this editor
hex = noone
next_hex = noone
moving = false
selected = -1
move_max = 1
can_move = true
image_speed = 0
image_index = 2
state = "none"
player = noone


melee_button = instance_create_layer(x,y+30,"Buttons",Button)
melee_button.text = "Attack"
melee_button.visible = false