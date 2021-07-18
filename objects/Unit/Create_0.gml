/// @description Insert description here
// You can write your code in this editor
hex = noone
start_x = x
start_y = y
moving = false
selected = -1
moved = false
move_max = 1
image_speed = 0
image_index = 2
state = "none"
player = noone
valid_hex = noone
orig_hex = hex

melee_button = instance_create_layer(x,y+30,"Buttons",Button)
melee_button.text = "Attack"
melee_button.visible = false