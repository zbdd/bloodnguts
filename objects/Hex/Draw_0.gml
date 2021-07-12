/// @description Insert description here
// You can write your code in this editor
for(var xx=0; xx<ds_list_size(list)-1;xx++){
	draw_set_color(colour)
	draw_triangle(x,
	y,
	list[| xx].x,
	list[| xx].y,
	list[| xx+1].x,
	 list[| xx+1].y,
	false)
	draw_set_color(c_black)
	draw_text(list[| 2].x, y,"("+string(q)+","+string(r)+","+string(s)+")")
}
colour = default_colour

if(ds_list_size(items_on_hex)>0) draw_text(x,y-size/2,string(ds_list_size(items_on_hex)))