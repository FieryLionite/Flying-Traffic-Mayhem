var spd = argument0,
    dir = argument1,
    life = argument2,
    sprite = argument3,
    inc = argument4,
    part = instance_create(x, y, Particle);

part.speed = spd;
part.direction = dir;
part.life = life;
part.maxLife = life;
part.sprite_index = sprite;
part.inc = inc;
return part;
