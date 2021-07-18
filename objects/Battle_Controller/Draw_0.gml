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

	draw_set_colour(c_blue)
	draw_rectangle(cell_w*12,cell_h*1,cell_w*15,cell_h*8,true)
	draw_text(cell_w*12.1,cell_h*1.1,"Events")
	
	for(var xx=0;xx<ds_list_size(events);xx++) {
		var event = events[| xx]
		draw_text(cell_w*12.1,cell_h*(2.1+xx/2),event)
	}
}