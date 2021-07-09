// Script assets have changed for v2.3.0 see
// https://help.yyoyogames.com/hc/en-us/articles/360005277377 for more information
function hex_create(layout, q,r,s,size){
	
	var list = ds_list_create()
	var center = instance_create_layer(q,r,layout.layer,Point)
	var point = flat_hex_to_pixel(q,r,s,size)
	center.x = point.x + layout.offset_x
	center.y = point.y + layout.offset_y
	var hex = instance_create_layer(center.x, center.y,layout.layer,Hex)
	hex.default_colour = layout.colour
	hex.layout = layout
	hex.q = q
	hex.r = r
	hex.s = s
	hex.size = size
	
	for(var xx=0; xx<7;xx+=1) {
		var corner = flat_hex_corner(center,hex.size-3,xx)
		//show_debug_message("Corner " + string(xx) + " X: " + string(corner.x) + " Y: " + string(corner.y))
		ds_list_add(list, corner)
	}
	
	with (center) { instance_destroy() }
	hex.list = list
	
	return hex
}