for (z = 0; z < instance_number(argument0); z++){
    c = instance_find(argument0, z);
    c.x += argument1;
    c.y += argument2;
}
