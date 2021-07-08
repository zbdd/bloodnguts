/// @description Insert description here
// You can write your code in this editor
x = mouse_x
y = mouse_y

validHex = find_hex_at_point()

if (validHex) {
	with (validHex) {
		colour = c_red
	}
}

// Picking up units and moving them
unit = instance_position(x,y,Unit)
if (mouse_check_button_pressed(mb_left)) {
	if (unit) with (unit) { selected = true; moved = true }	
}
if (mouse_check_button_released(mb_left)) {
	if (unit) with (unit) { if (selected) selected = false }	
}