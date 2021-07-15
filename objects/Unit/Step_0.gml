/// @description Insert description here
// You can write your code in this editor
image_blend = player.colour

if (!selected && moved) {
	valid_hex = find_hex_at_point()

	if (valid_hex)
		if (state == "can_move" && (hex_distance(orig_hex,valid_hex)<=move_max))  {
			move_to_hex(self,valid_hex)
			moved = false
			state = "moved"
			return
		} else if (state == "deploy") {
			move_to_hex(self,valid_hex)
			moved = false
			return	
		}
	x = start_x
	y = start_y
	moved = false
} 
else if (selected) {
	if (orig_hex) highlight_hexes_from_origin(orig_hex,move_max)
}
else {
	start_x = x
	start_y = y
	orig_hex = find_hex_at_point()
}