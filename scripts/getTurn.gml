//turn(currentDirection,endDirection,turnSpeed)
//returns the new argument1ection

argument0 = (argument0+360) mod 360; //takes care of negative angle values
argument1 = (argument1+360) mod 360; //takes care of negative angle values

// sorts out the new angle
if ((argument1-180) >= 0 xor sign(argument0-180) >= 0)
argument0 += sign( ((argument0+180) mod 360)-argument1 )*min(abs(argument1-argument0),argument2);
else
argument0 += -sign(argument0-argument1)*min(abs(argument1-argument0),argument2);

return(argument0); //returns the new angle
