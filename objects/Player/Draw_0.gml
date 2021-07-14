/// @description Insert description here
// You can write your code in this editor
cell_w = room_width/16
cell_h = room_height/16
draw_set_colour(c_blue)
draw_rectangle(cell_w*1,cell_h*1,cell_w*3,cell_h*8,true)
draw_text(cell_w*1.1,cell_h*1.1,"Player One")
draw_text(cell_w*1.1,cell_h*1.4,"Deploy your forces")

deploy = ds_list_size(units)
for(var xx=0;xx<ds_list_size(units);xx++) {
	var unit = units[| xx]
	if (unit.hex) deploy--
}
draw_text(cell_w*1.1,cell_h*1.7,"Units left: " + string(deploy))