var m,
turret = argument0;
for (i = 0; i < mountNum; i ++){
    if (i == 0 && mountNum > 1)
        m = createTool(getToolSupport(), i);
    else{
     m = createTool(getWeapon(), i);
       m.isTurret = turret;
    }
       setMount(i, m);
}
