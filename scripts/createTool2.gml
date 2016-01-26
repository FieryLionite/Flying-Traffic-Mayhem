var tool, car = argument1;
tool = instance_create(0,0, argument0);
tool.parent = car.id;
tool.num = argument1;
return tool.id;
