var w = 15,
    h = 5,
    space = 3,
    value = argument0,
    xx = argument1,
    yy = argument2 + h/2,
    value2 = argument3;

barNum = floor(value2/10);
valLeft = value2 - 10*barNum;
draw_set_color(c_white)
draw_set_alpha(0.3)
for (i = 0; i < barNum + 1; i ++){
    if (i < barNum)
        draw_rectangle(xx+i*w+space, yy, xx + i*w+w, yy+h,0);
    else if (valLeft > 0)
        draw_rectangle(xx+i*w+space, yy, xx + i*w+w*valLeft/10, yy+h,0);
}

barNum = floor(value/10);
valLeft = value - 10*barNum;
draw_set_color(c_black)
draw_set_alpha(1)
draw_set_color(c_orange)
for (i = 0; i < barNum + 1; i ++){
    if (i < barNum)
        draw_rectangle(xx+i*w+space, yy, xx + i*w+w, yy+h,0);
    else if (valLeft > 0)
        draw_rectangle(xx+i*w+space, yy, xx + i*w+w*valLeft/10, yy+h,0);
}


draw_set_color(c_black)
