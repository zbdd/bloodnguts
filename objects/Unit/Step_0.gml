/// @description Insert description here
// You can write your code in this editor
image_blend = player.colour

if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	selected = 1
	with (global.Mouse) {
		
		if (ds_list_find_index(selected,other) == -1) {
		
			for(var xx=0;xx<ds_list_size(selected);xx++) {
				var selectable = selected[| xx]
				selectable.selected = 0
			}
			ds_list_clear(selected)
			ds_list_add(selected,other)
		}
	}
}

if (mouse_check_button(mb_left) && instance_position(mouse_x,mouse_y,self)) {
	if (selected > 0) selected += 1
	
	if (selected > 10) moving = true
}

if (mouse_check_button_released(mb_left) && instance_position(mouse_x,mouse_y,self) && moving) {
	selected = 0
	moving = false
	
	next_hex = find_hex_at_point()
	if (next_hex) {
		if (hex_distance(orig_hex,next_hex) <= move_max 
			&& can_move
			&& orig_hex != next_hex) {
			move_to_hex(self,next_hex)
		}
		else move_to_hex(self,hex)
	}
	else move_to_hex(self,hex)
}

if(selected > 0) {
	highlight_hexes_from_origin(orig_hex,move_max)
}

if (moving) {
	x = mouse_x
	y = mouse_y
}

if (next_turn) {
	show_debug_message("turn: " + string(turn))
	turn++
	if (orig_hex) {
		show_debug_message("test")
		var log = string(name) + " moved to " + string(orig_hex.q) + "," + string(orig_hex.r)
		if(hex != orig_hex) ds_list_add(player.events,log)
	}
	orig_hex = find_hex_at_point()
	next_turn = false
}