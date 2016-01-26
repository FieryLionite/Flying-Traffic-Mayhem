show_message("Scifi - Driving ver 0.1
Basic Controls:
F1: pausing by going back to this screen
A, D: pitch up and down
W, S: Adjust gear
Q, E: use vertical thrusters
R: reload all weapons
Tab: Boost
hold Shift: turn off flight assists to increase your pitch speed, but your FA will loose sync(see below).
T: Toggle between turret's mannual aiming mode and auto aim mode (will aim at the nearest hostile)
X: set gear to 0
ESC: back to main menu or quit

------ Game Modes

Fugitive: you are to use the busy traffic to stay away from police fire and run as far as you can. Fighting is possible but not recommended.

Mayhem: cause as much damage as you can to everything. 3x score bonus if a civilian car gets destroyeed by police fire. 9x bonus if a police is destroyed by friendly fire


------ Operating the Menu

You can hover the mouse over most elements to see their explanation


------ Stats

Capacitor and energy: weapons and tools use energy that will drain your capacitor. The more capacitor a car has, the faster it recharges. A car with a small capacitor shouldn't use high powered weapons

------ Others

Note: when you loose speed from collision, the gear remains the same so your speed will pick up again automatically.

Loosing Flight Assists sync:
Turning off flight assists or colliding or going too high will make you loose FA sync. To regain your momentum, you can pitch your ship to match with the orange line, or just wait until it lines up automatically.")

window_set_fullscreen(true);

/*
    
Mount points: each car has 1 - 4 empty mount points that you can equip either a weapon or tool


Mount Type: 
    Turreted mounts will turn towards the mouse or the nearest enemy hostile (T to toggle mode) but deals 30% less damage
    
    Fixed mounts does not turn but deals 30% more damage than turrets.
*/
