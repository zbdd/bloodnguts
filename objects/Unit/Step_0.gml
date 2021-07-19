/// @description Insert description here
// You can write your code in this editor
image_blend = player.colour
scavange_button.x = x
scavange_button.y = y + 30

if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x,mouse_y,scavange_button)) {
	next_action = "scavanging"
	scavange_button.visible = false
}

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
	var valid_move = false
	
	next_hex = find_hex_at_point()
	if (next_hex) {
		if (hex_distance(orig_hex,next_hex) <= move_max 
			&& can_move
			&& orig_hex != next_hex) {
			move_to_hex(self,next_hex)
			valid_move = true
		}
		else move_to_hex(self,hex)
	}
	else move_to_hex(self,hex)
	
	if (valid_move) {
		for(var xx=0;xx<ds_list_size(next_hex.items_on_hex);xx++) {
			if (next_hex.items_on_hex[| xx].object_index == Item) scavange = next_hex.items_on_hex[| xx]	
		}
		
		if(scavange != noone) scavange_button.visible = true
		
	}
}

if(selected > 0) {
	highlight_hexes_from_origin(orig_hex,move_max)
}

if (moving) {
	x = mouse_x
	y = mouse_y
}

if (next_turn) {
	turn++
	
	if (orig_hex) {
		var log = string(name) + " moved to " + string(orig_hex.q) + "," + string(orig_hex.r)
		if(hex != orig_hex) ds_list_add(player.events,log)
	}
	
	if (next_action != noone) {
		ds_list_add(player.events,string(name) + " is " + string(next_action))
		
		if(scavange != noone) {
			if(scavange.name == "Food") {
				player.food++
				ds_list_delete(next_hex.items_on_hex, ds_list_find_index(next_hex.items_on_hex,scavange))
				with (scavange) { instance_destroy() }
				scavange = noone
			}
		}
	}
	
	orig_hex = find_hex_at_point()
	next_turn = false
}