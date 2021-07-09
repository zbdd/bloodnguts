// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_point(x,y){
	var point = instance_create_layer(x,y,"Hexes",Point)
	//point.alarm[0] = 10 // self destruct
	return point
}