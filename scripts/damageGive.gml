car = argument0;
amount = argument1;
giver = argument2;

if (!instance_exists(car.mount0)){
    if (!car.frenzy){
        car.frenzy = true;
        car.dialogT = 120;
        car.dialog = getFrenzy();
    }
}/*else{
    car.target = giver;
}*/

if (car.id != Player.id)
    with (car) triggerDefensiveMounts();
    
if (car.shield > 0 && !car.shieldDown){
    if(shieldHullRatio < 1)
        amount *= 1.25;
    car.shieldN = 15;
    if (car.shield - amount < 0){
        amount -= car.shield;
        car.shield = 0;
    }else{
        car.shield -= amount;
        amount = 0;
    }
}

if (amount > 0){
    if(shieldHullRatio > 1)
        amount *= 1.25;
    car.shieldDown = true;
    car.hp -= amount;
}
    //show_message(string(amount) + ", " + string(car.shield));

if (car.hp < 0)
    if (car.id == Player.id){
        Player.x = -10000;
        //game_restart()
        //with (Player) instance_destroy();
        Player.visible = false;
        p = particleSpawn(1, direction - 180, 16, sprExplosion, 0);
        p.x = Player.x;
        p.y = Player.y;
        p.image_index = 0;
        p.image_speed = 1;
        instance_create(0,0, BackToMenu);
    }
    else{
        s = 250;
        if (car.isPolice && !car.isPolice)
            s *=2;
        if (giver.isPolice)
        s *= 3;
        if (giver.isPolice && car.isPolice)
        s *= 3;
        score += s;
        with (car) instance_destroy()
    }
