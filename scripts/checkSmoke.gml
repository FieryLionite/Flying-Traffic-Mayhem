var car = argument0;
if (!car.smoking)
    return false;
pdis = car.x - x;
pdir = point_direction(x, y, car.x, car.y)
if (pdis > 0 && pdis < 600 && (pdir > 300 || pdir < 60))
    return true;
