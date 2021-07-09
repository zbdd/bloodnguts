/// @description Insert description here
// You can write your code in this editor
if (runOnce) {
	for(var rr=-size; rr<=size; rr++) {
		for(var qq=-size;qq<=size;qq++) {
			var s = -qq-rr
			if (s>=-size&&s<=size) {
				hex = hex_create(self,qq,rr,s,hexSize)
				ds_map_add(layout,string(qq)+","+string(rr),hex)
				
				ds_map_add(hex.neighbours,string(qq+1)+","+string(rr),noone)
				ds_map_add(hex.neighbours,string(qq+1)+","+string(rr-1),noone)
				ds_map_add(hex.neighbours,string(qq)+","+string(rr-1),noone)
				ds_map_add(hex.neighbours,string(qq-1)+","+string(rr),noone)
				ds_map_add(hex.neighbours,string(qq-1)+","+string(rr+1),noone)
				ds_map_add(hex.neighbours,string(qq)+","+string(rr+1),noone)
			}
		}

	//show_debug_message("X " + string(hex.x) + " Y " + string(hex.y))
	}
	
	
	var layout_size = ds_map_size(layout)
	var key = ds_map_find_first(layout)
	for (var xx=0;xx<layout_size;xx++) {
		var hex = ds_map_find_value(layout,key)
		if (hex) {
			var neighbour_size = ds_map_size(hex.neighbours)
			var neighbour_key = ds_map_find_first(hex.neighbours)
			for (var yy=0;yy<neighbour_size;yy++) {
				var neighbour_hex = ds_map_find_value(layout,neighbour_key)
				if (neighbour_hex) {
					hex.neighbours[? neighbour_key] = neighbour_hex
				}
				neighbour_key = ds_map_find_next(hex.neighbours,neighbour_key)
			}
		}
		key = ds_map_find_next(layout,key)
	}
	
	runOnce = false
}