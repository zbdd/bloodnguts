/// @description Insert description here
// You can write your code in this editor
hex = noone
next_hex = noone
orig_hex = noone
moving = false
name = "Unit"
selected = -1
move_max = 1
can_move = true
image_speed = 0
image_index = 2
state = "none"
player = noone

next_turn = true
next_action = noone

melee_button = instance_create_layer(x,y+30,"Buttons",Button)
melee_button.text = "Attack"
melee_button.visible = false

scavenge_button = instance_create_layer(x,y+40,"Buttons",Button)
scavenge_button.text = "scavenge"
scavenge_button.sprite_index = Scavenge_Sprite
scavenge_button.visible = false

scavenge = noone

turn = 0