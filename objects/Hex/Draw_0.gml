/// @description Insert description here
// You can write your code in this editor
for(var xx=0; xx<ds_list_size(list)-1;xx++){
	draw_set_color(colour)
	draw_triangle(global.Layout.offset_x + x,
	global.Layout.offset_y + y,
	global.Layout.offset_x + list[| xx].x,
	global.Layout.offset_y + list[| xx].y,
	global.Layout.offset_x + list[| xx+1].x,
	global.Layout.offset_y + list[| xx+1].y,
	false)
	draw_set_color(c_black)
	draw_text(global.Layout.offset_x + list[| 2].x, global.Layout.offset_y + y,"("+string(q)+","+string(r)+","+string(s)+")")
}
colour = default_colour