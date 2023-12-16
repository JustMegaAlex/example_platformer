
key_left = keyboard_check(vk_left)||keyboard_check(ord("A"))
key_right = keyboard_check(vk_right)||keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z"))


up_free = place_empty(x, y - 1, obj_block)
down_free = place_empty(x, y + 1, obj_block)
left_free = place_empty(x - 1, y, obj_block)
right_free = place_empty(x + 1, y, obj_block)

move_h = key_right*right_free - key_left*left_free

// moving
hsp = move_h * hsp_base
vsp = min(vsp + grav, vsp_max)
vsp += key_jump * !down_free * jump_sp

if ((vsp > 0) and !down_free) or ((vsp < 0) and !up_free) 
	vsp = 0

if ((hsp > 0) and !right_free) or ((hsp < 0) and !left_free)
	hsp = 0

dir = point_direction(0, 0, hsp, vsp)

if abs(hsp) or abs(vsp)
	scr_move_coord_contact_obj(hsp, vsp, obj_block)

