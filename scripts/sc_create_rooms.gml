_X = 0;
_Y = 1;
_ROOM_NAME = 2;

/* Funciones */
function getNumber_2(pos1, pos2){
    var num1 = getNumer(pos1);
    var num2 = getNumer(pos2);
  
    return num1 + num2; 
}
function getNumber(pos){
    return real(string_char_at(global.seed, pos));
}


// Crear/Tomar la semilla de creacion
global.seed = "123456789012345";


// Detectar el nivel de dificiultad
global.enemy_max_speed_multiplier = 1.0;
global.enemy_acceleration_multiplier = 1.0;     // deberia ser llamado en una funcion xq la dificultad va a incrementar

global.enemy_max_speed = 2;
global.enemy_acceleration = 0.1;

// Crear una lista con las salas

for(var 1 = 0; i < 6; i += 1){

}





/*
global.arRooms[0, _X] = 0;
global.arRooms[0, _Y] = 0;
global.arRooms[0, _ROOM_NAME] = "rmPrefab_1_E";

global.arRooms[1, _X] = 1;
global.arRooms[1, _Y] = 0;
global.arRooms[1, _ROOM_NAME] = "rmPrefab_2_EW";

global.arRooms[2, _X] = 2;
global.arRooms[2, _Y] = 0;
global.arRooms[2, _ROOM_NAME] = "rmPrefab_1_W";
*/
