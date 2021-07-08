/// @description Insert description here
// You can write your code in this editor

if (!selected && moved) {
	validHex = find_hex_at_point()

	if (validHex) {
		move_to_hex(self,validHex)
	}
}