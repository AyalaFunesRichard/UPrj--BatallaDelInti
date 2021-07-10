l = global.level;

numRan = sc_getRandom((l * 7));

msg = "No hay cambios en dificultad";

if(l != 1){
    if(numRan < 50){ // Aumenta daño MEDIO
        global.diffMultiplier +=  0.22;    
        msg = "Aumento MEDIO en dificultad";
    }else{
        if(numRan < 70){ // Aumenta daño POCO
            global.diffMultiplier +=  0.1;    
        msg = "Aumento POCO en dificultad";
        }else{ // Aumenta daño BASTANTE
            global.diffMultiplier +=  0.4;
        msg = "Aumento BASTANTE en dificultad";
        }
    }
}

// Actualizar velocidad
global.pishtaco_speed = global.pishtaco_speed * global.diffMultiplier;
global.pishtaco_speed_exploting = global.pishtaco_speed_exploting_base * global.diffMultiplier;

global.duende_speed = global.duende_speed_base * global.diffMultiplier;

// Actualizar daño
global.duende_damage = global.duende_damage_base * global.diffMultiplier;

global.pishtaco_damage = global.pishtaco_damage_base * global.diffMultiplier;

global.jarjacha_damage = global.jarjacha_damage_base * global.diffMultiplier;


sc_print_console(msg, true, false);
sc_print_console("Multiplicador dificultad:" + string(global.diffMultiplier), false, true);

// Reducir el CoolDown del jugador
if(l > 2) obPlayer.cd = 0.2;
