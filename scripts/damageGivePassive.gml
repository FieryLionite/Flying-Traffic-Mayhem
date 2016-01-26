car = argument0;
amount = argument1;
giver = argument2;



    
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
        show_message("Your Score: " + string(score));
        window_set_fullscreen(true);
        //game_restart()
        with (Player) instance_destroy();
        surface_reset_target();
        room_goto_previous();
    }
    else{
        /*s = 250;
        if (car.isPolice && !car.isPolice)
            s *=2;
        if (giver.isPolice)
        s *= 3;
        if (giver.isPolice && car.isPolice)
        s *= 3;
        score += s;*/
        with (car) instance_destroy()
    }
