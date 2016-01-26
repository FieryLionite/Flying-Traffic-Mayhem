toolIndex = argument0;
switch (toolIndex){
    case Machinegun: 
        return "Firing a storm of armor piercing bullets. It's slightly low accuracy is traded with higher hull damage."; ; break;
    case Cannon: 
        return "Deals explosive damage, could cause potential friendly fire if you're too close"; ; break;
    case Missile: 
        return "Fires 4 dumbfire missiles"; ; break;
    case MissileHoming: 
        return "Fires 1 homing missile, it will automatically fly towards the nearest hostile target"; ; break;
    case LazerBeam: 
        return "Fires a scolding beam of energy continously. Deals more damage than the pulse lazer but also exhaust the capacitor quicker. It also deals more heat damage but also heats your ship up faster. Lazers deal more shield damage."; ; break;
    case Lazer: 
        return "Fire lazers in half second pulses. Good for persistent attack because it doesn't drain the capacitor as much. Lazers deal more shield damage."; ; break;
    case Chaff: 
        return "Once released, will make turrets and missiles loose their aim."; ; break;
    case Smoke: 
        return "Will blind any targets behind you, good against targets that are using fixed weapons. Note that turrets will still be able to target you"; ; break;
    case Mine: 
        return "Releases air mines that will detornate on impact"; ; break;
    case AirBreak: 
        return "For sudden deceleration. Becareful since it heats up your vehicle."; ; break;
}
