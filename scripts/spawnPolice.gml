var level = argument0,
spr;

if (level < 5){
    spawnEnemy(choose(sprP1, sprP2, sprP3),false);
}else if (level < 10){
    turret = false;
    if (round(random(3)) == 0)
        turret = true;
    spawnEnemy(choose(sprP4, sprP5), turret);
    if (round(random(1)) == 0){
        spawnEnemy(choose(sprP1, sprP2, sprP3),turret);
        if (round(random(3)) == 0)
        turret = true;
    }
}else{
    spawnEnemy(choose(sprP6, sprP7), true);
    spawnEnemy(choose(sprP3, sprP2), false);
    if (round(random(2)) == 0)
        spawnEnemy(choose(sprP1, sprP2, sprP3),true);
}

