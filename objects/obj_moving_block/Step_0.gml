
dir = point_direction(0, 0, hsp, vsp)

if scr_move_coord_contact_obj(hsp, vsp, obj_block) {
	// change dir
	hsp *= -1
	vsp *= -1
}
