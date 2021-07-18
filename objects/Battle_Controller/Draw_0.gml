/// @description Insert description here
// You can write your code in this editor
draw_set_colour(c_blue)
draw_text(cell_w*14,cell_h*1.1,"Turn: " + string(turn))

with (player_1) {
	name = "Player One"
	draw_set_colour(colour)
	draw_rectangle(cell_w*1,cell_h*1,cell_w*3,cell_h*8,true)
	draw_text(cell_w*1.1,cell_h*1.1,name)

	draw_text(cell_w*1.1,cell_h*1.4,"Food " + string(food))
	draw_text(cell_w*1.1,cell_h*1.7,"Water " + string(water))
}

with (player_2) {
	name = "Player Two"
	draw_set_colour(colour)
	draw_rectangle(cell_w*11,cell_h*1,cell_w*15,cell_h*8,true)
	draw_text(cell_w*11.1,cell_h*1.1,name)

	deploy = ds_list_size(units)

	for(var xx=0;xx<ds_list_size(units);xx++) {
		var unit = units[| xx]
		if (unit.hex) deploy--
	}
	if(deploy != 0) {
		draw_text(cell_w*11.1,cell_h*1.4,"Deploy your forces")
		draw_text(cell_w*11.1,cell_h*1.7,"Units left: " + string(deploy))
	}
}