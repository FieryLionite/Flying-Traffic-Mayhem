ax = argument0;
ay = argument1;
w = argument2;
h = argument3;
numSmall = argument4;
numLarge = argument5;

small = 0;
for (i = 0; i < instance_number(Car); i ++){
    c = instance_find(Car, i);
    if (c.size = 1 and c.x > ax and c.y > ay and c.x < ax+w and c.y < ay + h){
        small ++;
        //with (c) instance_destroy();
    }
}

large = 0;
for (i = 0; i < instance_number(Car); i ++){
    c = instance_find(Car, i);
    if (c.size = 2 and c.x > ax and c.y > ay and c.x < ax+w and c.y < ay + h)
        large ++;
}

for (i = numSmall - small; i >= 0; i --){
    c = instance_create(-1000, -1000, choose(CarSmall, CarSmall, CarSmall, CarLorry));
    check = false;
    while (!check){
        yy = ay + random(h);
        xx = ax + random (w);
        //if (collision_rectangle(xx - getWidth(c)/2, yy - getHeight(c)/2, xx + getWidth(c)/2, yy + getHeight(c)/2, Car, 0, 1) < 0)
            check = true;
    }
    c.x = xx;
    c.y = yy;
}

for (i = numLarge - large; i >= 0; i --){
    c = instance_create(-1000, -1000, CarTruck);
    check = false;
    while (!check){
        yy = ay + random(h);
        xx = ax + random (w);
       //if (collision_rectangle(xx - getWidth(c)/2, yy - getHeight(c)/2, xx + getWidth(c)/2, yy + getHeight(c)/2, Car, 0, 1) < 0)
            check = true;
    }
    c.x = xx;
    c.y = yy;
}

