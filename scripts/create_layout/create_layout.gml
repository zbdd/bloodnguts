// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_layout(x,y,size){
	layout = instance_create_layer(x,y,"Orders",Layout)
	layout.colour = c_green
	layout.size = size
	
	return layout
}