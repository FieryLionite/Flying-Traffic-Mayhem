var turret = argument1;

c = instance_create(-200, random(room_height), Car);
c.sprite_index = argument0;
c.orgSprite = argument0
with(c){
    target = Player//instance_nearest(x, y, Player);
    getCar(sprite_get_name(sprite_index));
    if (topSpeed >= target.speed)
        speed = target.speed;
    else
        speed = topSpeed;
    outfit(turret);
    if (size < 2 && speed >= target.speed || round(random(1))== 0)
        x = -200;
    else
        x = room_width + 200;
    isPolice = true;
    policeTimer = 3000;
    alarm[1] = -1;
}
