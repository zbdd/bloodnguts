// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function flat_hex_to_pixel(q,r,s,size){
	var point = instance_create_layer(x,y,"Hexes",Point)
	point.x = size * (3/2 * q)
	point.y = size * (sqrt(3)/2 * q + sqrt(3) * r)
	//show_debug_message("X " + string(point.x) + " Y " + string(point.y))
	return point
}