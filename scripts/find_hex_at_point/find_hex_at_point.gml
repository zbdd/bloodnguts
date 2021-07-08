// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_hex_at_point(){
	var searchX = global.Layout.offset_x
	var searchY = global.Layout.offset_y
	var validHex = noone
	var hex = noone

	var size = ds_map_size(global.Layout.layout)
	var detectSize = global.Layout.hexSize
	if (size != 0) {
		hexKey = ds_map_find_first(global.Layout.layout)
	
		for(var xx=0;xx<size;xx++) {
			hex = ds_map_find_value(global.Layout.layout,hexKey)
		
			if (!is_undefined(hex)) {
				point = flat_hex_to_pixel(hex.q,hex.r,hex.s,detectSize)
				if (point) {
					if(distance_to_point(point.x+searchX,point.y+searchY) < detectSize) {
						validHex = hex
						//detectSize = distance_to_point(point.x+searchX,point.y+searchY) 
					}
				}
				//show_debug_message(string(detectSize))
			}
			hexKey = ds_map_find_next(global.Layout.layout,hexKey)
		}
	}
	
	return validHex
}