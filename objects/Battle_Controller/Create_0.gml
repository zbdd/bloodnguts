/// @description Insert description here
// You can write your code in this editor
state = "deploy"
cell_size = 16
cell_w = room_width/cell_size
cell_h = room_height/cell_size

turn_button = instance_create_layer(cell_w*13,cell_h*13,"Buttons",Button)
turn_button.image_xscale *= 3
turn_button.text = "End Deployment"

player_1 = noone
player_2 = noone

turn = -1
new_turn = false

state = "waiting"