var m = argument0,
    num = argument1;

if (m.clipSize <= 0)
    exit;

xx = mouse_x + sprite_get_width(sprCursor)/2;
amount = 0;
if (m.ammo > 0){
    col = c_orange;
    amount = m.ammo/m.clipSize * 100;
}else{
    col = c_yellow;
    amount = m.tick/m.reloadTime*100;
}
draw_set_alpha(0.2)
draw_set_color(c_white);
draw_rectangle(xx, mouse_y + 20*num + 3, xx + 35, mouse_y + 20*num + 3 + 3,0);
draw_set_alpha(1)
draw_healthbar(xx, mouse_y + 20*num + 3, xx + 35, mouse_y + 20*num + 3 + 3, amount, c_white, col, col, 0, 0, 1);

yy = room_height - 32*(num + 1) + 3;
draw_sprite(m.sprite_index, 0, room_width - 100, yy);
draw_healthbar(room_width - 68, yy, room_width - 8, yy + 3, m.ammoMax/m.ammoTotal*100, c_white, c_orange, c_orange, 0, 1, 1);
