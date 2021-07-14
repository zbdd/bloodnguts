/// @description Insert description here
// You can write your code in this editor
if (!selected && moved) {
	valid_hex = find_hex_at_point()
	
	if (valid_hex)
		if (state == "can_move" && hex_distance(orig_hex,valid_hex)<=move_max)  {
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
	if (orig_hex) highlight_hexes_from_origin(orig_hex,move_max)
}
else {
	start_x = x
	start_y = y
	with (move_point) { instance_destroy() }
	
	if (state != "can_move") orig_hex = find_hex_at_point()
}