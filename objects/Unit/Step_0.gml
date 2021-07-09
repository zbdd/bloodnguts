/// @description Insert description here
// You can write your code in this editor

if (selected) {

	if (!move_point) {
		move_point = instance_create_layer(start_x,start_y,"Hexes",Point)
	}
	
	if (move_point) {
		with (move_point) {
			//show_debug_message("Point: " + string(x)+","+string(y))
			valid_hex = find_hex_at_point()
			if (valid_hex) {
				with (valid_hex) { colour = c_green }
				var key = ds_map_find_first(valid_hex.neighbours)
				for(var xx=0;xx<ds_map_size(valid_hex.neighbours);xx++) {
					var hex = ds_map_find_value(valid_hex.neighbours,key)
					if (hex) with (hex) { colour = c_green }
					key = ds_map_find_next(valid_hex.neighbours,key)
				}
			}
		}
	}
	
	
} else {
	start_x = x
	start_y = y
}

if (!selected && moved) {
	valid_hex = find_hex_at_point()
	move_point = noone
	
	if (valid_hex) {
		move_to_hex(self,valid_hex)
	}
} 