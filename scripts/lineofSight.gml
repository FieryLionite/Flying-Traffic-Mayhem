car = argument0;
var ty = car.y, result;
car.y = -50000;
result = collision_line(x, y, car.x, ty, Car, 1, 1);
car.y = ty;
return result;
