var xx = argument0,
    yy = argument1,
    w = argument2,
    h = argument3,
    alpha = argument4;

draw_set_color(c_white);
draw_set_alpha(alpha);
draw_roundrect(xx, yy, xx + w, yy + h, 0);
draw_set_color(c_black);
draw_set_alpha(1);
