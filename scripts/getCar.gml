    topSpeed = 0;
    turn = 0;
    size = 0;
    accel = 0;
    mountNum = 0;
    hpMax = 0
    shieldMax = 0;
switch (asset_get_index(argument0)){
    case sprC1: 
    topSpeed = 22;
    turn = 1;
    size = 1;
    accel = 0.1;
    mountNum = 2;
    hpMax = 75;
    shieldMax = 75;
    capacitorMax = 100;
    break;
    case sprC2: 
    topSpeed = 25;
    turn = 1.6;
    size = 1;
    accel = 0.2;
    mountNum = 1;
    hpMax = 75;
    shieldMax = 50;
    capacitorMax = 80;
    break;
    case sprC3: 
    topSpeed = 22;
    turn = 1;
    size = 1;
    accel = 0.1;
    mountNum = 1;
    hpMax = 100;
    shieldMax = 75;
    capacitorMax = 100;
    break;
    case sprC4: 
    topSpeed = 24;
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
    
    case sprP1: 
        topSpeed = 32;
        turn = 1.2;
        size = 1;
        accel = 0.2;
        mountNum = 2;
        hpMax = 120;
        shieldMax = 100;
        capacitorMax = 140;
    break;
    case sprP2: 
        topSpeed = 40;
        turn = 1.8;
        size = 1;
        accel = 0.3;
        mountNum = 1;
        hpMax = 100;
        shieldMax = 80;
        capacitorMax = 100;
    break;
    case sprP3: 
        topSpeed = 37;
        turn = 1.4;
        size = 1;
        accel = 0.2;
        mountNum = 2;
        hpMax = 150;
        shieldMax = 120;
        capacitorMax = 160;
    break;
    case sprP4: 
        topSpeed = 32;
        turn = 1;
        size = 1;
        accel = 0.15;
        mountNum = 2;
        hpMax = 200;
        shieldMax = 150;
        capacitorMax = 200;
    break;
    case sprP5: 
        topSpeed = 25;
        turn = 0.6;
        size = 1;
        accel = 0.15;
        mountNum = 3;
        hpMax = 250;
        shieldMax = 150;
        capacitorMax = 200;
    break;
    case sprP6: 
        topSpeed = 22;
        turn = 0.5;
        size = 2;
        accel = 1;
        mountNum = 4;
        shieldMax = 200;
        hpMax = 300;
        capacitorMax = 300;
    break;
    case sprP7: 
        topSpeed = 22;
        turn = 0.5;
        size = 2;
        accel = 1;
        mountNum = 4;
        shieldMax = 250;
        hpMax = 250;
        capacitorMax = 250;
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
maxSp = topSpeed;
shield = shieldMax;
capacitor = capacitorMax;
//show_message(string(shield))
hp = hpMax;
if (instance_exists(mount0))
    with(mount0) instance_destroy();
if (instance_exists(mount1))
    with(mount1) instance_destroy();
if (instance_exists(mount2))
    with(mount2) instance_destroy();
if (instance_exists(mount3))
    with(mount3) instance_destroy();
