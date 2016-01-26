var car = instance_create(0,0, Car);
car.arg = argument0;
    
with (car){
switch (asset_get_index(argument0)){
    case sprC1: 
    topSpeed = 25;
    turn = 1;
    size = 1;
    accel = 0.1;
    mountNum = 2;
    hpMax = 75;
    shieldMax = 75;
    capacitorMax = 120;
    break;
    case sprC2: 
    topSpeed = 32;
    turn = 1.6;
    size = 1;
    accel = 0.2;
    mountNum = 1;
    hpMax = 75;
    shieldMax = 50;
    capacitorMax = 80;
    break;
    case sprC3: 
    topSpeed = 25;
    turn = 1;
    size = 1;
    accel = 0.1;
    mountNum = 1;
    hpMax = 100;
    shieldMax = 75;
    capacitorMax = 100;
    break;
    case sprC4: 
    topSpeed = 28;
    turn = 1.2;
    size = 1;
    accel = 0.15;
    mountNum = 1;
    hpMax = 100;
    shieldMax = 75;
    capacitorMax = 110;
    break;
    case sprL1: 
    topSpeed = 20;
    turn = 0.8;
    size = 1;
    accel = 0.08;
    mountNum = 2;
    hpMax = 150;
    shieldMax = 100;
    capacitorMax = 150;
    break;
    case sprL2: 
    topSpeed = 18;
    turn = 0.8;
    size = 1;
    accel = 0.08;
    mountNum = 1;
    hpMax = 200;
    shieldMax = 100;
    capacitorMax = 140;
    break;
    case sprT1: 
    topSpeed = 16;
    turn = 0.5;
    size = 2;
    accel = 0.08;
    mountNum = 3;
    shieldMax = 150;
    hpMax = 250;
    capacitorMax = 220;
    break;
    case sprT2: 
    topSpeed = 14;
    turn = 0.5;
    size = 2;
    accel = 0.05;
    mountNum = 3;
    shieldMax = 250;
    hpMax = 250;   
    capacitorMax = 240;
    break;
    case sprT3: 
    topSpeed = 12;
    turn = 0.4;
    size = 2;
    accel = 0.05;
    mountNum = 4;
    shieldMax = 150;
    hpMax = 300;  
    capacitorMax = 300;
    break;
    case sprHX: 
    topSpeed = 16;
    turn = 0.7;
    size = 2;
    accel = 0.08;
    mountNum = 4;
    shieldMax = 250;
    hpMax = 150;  
    capacitorMax = 200;
    break;

}
orgSprite = asset_get_index(argument0);
turnSP = turn;
shield = shieldMax;
capacitor = capacitorMax;
//show_message(string(shield))
hp = hpMax;
turnSP = turn;
}

return car;
