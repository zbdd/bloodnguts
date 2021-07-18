/// @description Insert description here
// You can write your code in this editor
randomise()

width = window_get_width()/2
height = window_get_height()/2

global.Layout = create_layout(width,height,3) //instance_create_layer(width,height,"Hexes",Layout)
global.Mouse = instance_create_layer(400,400,"Hexes",Mouse)

//Spawn Unit
alarm[0] = 10