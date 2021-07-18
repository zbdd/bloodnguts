/// @description Insert description here
// You can write your code in this editor
image_blend = player.colour

if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	selected = 1	
}

if (mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	if (selected > 0) selected += 1
	
	if (selected > 10) moving = true
}

if (mouse_check_button_released(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	selected = 0
	moving = false
	
	next_hex = find_hex_at_point()
	if (hex_distance(hex,next_hex) <= move_max) move_to_hex(self,next_hex)
	else move_to_hex(self,hex)
}

if(selected > 0) {
	highlight_hexes_from_origin(hex,move_max)	
}

if (moving) {
	x = mouse_x
	y = mouse_y
} else {
	hex = find_hex_at_point()
}

/*
if (selected) {
	if (orig_hex) highlight_hexes_from_origin(orig_hex,move_max)
	melee_button.visible = true	
} else {
		melee_button.visible = false
}

with(melee_button) {
	if(visible) {
		if(mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,self)) {
			other.state = "can_attack"	
		}
	}
}

if(mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,self)) selected = true

if (mouse_check_button_released(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	valid_hex = find_hex_at_point()
	selected = false
	
	if (valid_hex)
		if (state == "can_move" && (hex_distance(orig_hex,valid_hex)<=move_max))  {
			move_to_hex(self,valid_hex)
			state = "moved"
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
}*/