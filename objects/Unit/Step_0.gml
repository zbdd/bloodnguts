/// @description Insert description here
// You can write your code in this editor

if (!selected && moved) {
	valid_hex = find_hex_at_point()
	
	if (!move_layout) {
			move_layout = create_layout()
	}

	if (valid_hex) {
		move_to_hex(self,valid_hex)
		with (move_layout) { instance_destroy() }
		move_layout = noone
	}
} else {
	start_x = x
	start_y = y
}