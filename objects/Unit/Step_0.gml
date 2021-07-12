/// @description Insert description here
// You can write your code in this editor
if (!selected && moved) {
	valid_hex = find_hex_at_point()
	move_point = noone
	
	if (valid_hex)
		if (hex_distance(orig_hex,valid_hex)<=move_max)  {
			move_to_hex(self,valid_hex)
			moved = false
			return
		} else if (state == "deploy") {
			move_to_hex(self,valid_hex)
			moved = false
			return	
		}
	x = start_x
	y = start_y
} 

if (selected) {

	if (!move_point) {
		move_point = instance_create_layer(start_x,start_y,"Hexes",Point)
	}
	
	if (move_point) {
		with (move_point) {
			//show_debug_message("Point: " + string(x)+","+string(y))
			valid_hex = find_hex_at_point()
			if (valid_hex) {
					highlight_hexes_from_origin(valid_hex,other.move_max)
			}
		}
	}
	
	
} else {
	start_x = x
	start_y = y
	with (move_point) { instance_destroy() }
	orig_hex = find_hex_at_point()
}