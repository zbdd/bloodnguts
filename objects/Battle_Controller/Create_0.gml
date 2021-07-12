/// @description Insert description here
// You can write your code in this editor
state = "deploy"
cell_size = 16
cell_w = room_width/cell_size
cell_h = room_height/cell_size

end_deployment = instance_create_layer(cell_w*7,cell_h*1.1,"Buttons",Button)
end_deployment.image_xscale *= 3
end_deployment.text = "End Deployment"

player_1 = noone
player_2 = noone
turn = 0
new_turn = false