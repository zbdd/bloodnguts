// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function highlight_hexes_from_origin(hex,dist){
	for(var q=-dist;q<=dist;q++) {
		for(var r=-dist;r<=dist;r++) {
			var key = string(hex.q+q)+","+string(hex.r+r)
			var this_hex = ds_map_find_value(hex.layout.layout,key)
			
			if (this_hex) 
				if (hex_distance(hex,this_hex)<=dist) with (this_hex) { colour = c_green }
		}
	}
}