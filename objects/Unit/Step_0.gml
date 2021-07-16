/// @description Insert description here
// You can write your code in this editor
image_blend = player.colour

if(mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,self)) selected = true

if (mouse_check_button_released(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	valid_hex = find_hex_at_point()
	selected = false
	
	if (valid_hex)
		if (state == "can_move" && (hex_distance(orig_hex,valid_hex)<=move_max))  {
			move_to_hex(self,valid_hex)
			state = "moved"
			return
		} else if (state == "deploy") {
			move_to_hex(self,valid_hex)
			return	
		}
	x = start_x
	y = start_y
	moved = false
} 

if (selected) {
	if (orig_hex) highlight_hexes_from_origin(orig_hex,move_max)
	x = mouse_x
	y = mouse_y
}
else {
	start_x = x
	start_y = y
	orig_hex = find_hex_at_point()
}