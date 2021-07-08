// Script assets have changed for v2.3.0 see
// https://help.yyoyogames.com/hc/en-us/articles/360005277377 for more information
function flat_hex_corner(center, size, i){
	var angle_deg = 60 * i
	var angle_rad = degtorad(angle_deg)

	var point = instance_create_layer(center.x,center.y,"Hexes",Point)

	point.x = center.x + size * cos(angle_rad)
	point.y = center.y + size * sin(angle_rad)

	return point
}