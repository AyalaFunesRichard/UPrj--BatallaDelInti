_X = 0;_Y = 1;_ROOM_NAME = 2;
//
R_S = "rmPrefab_1_S";
// Detectar el nivel de dificiultad
global.enemy_max_speed_multiplier = 1.0;
global.enemy_acceleration_multiplier = 1.0;     // deberia ser llamado en una funcion xq la dificultad va a incrementar

global.enemy_max_speed = 2;
global.enemy_acceleration = 0.1;

var l = global.level;
sc_print_console("*NIVEL: " + string(l), true, true);


// Limpiar el array, esto es mas que nada cuando se cambia de nivel
arrCleaner [0,0] = -1;
global.arRooms = arrCleaner;


// Crear una lista con las salas
//// 1 = Noth ; 2 = East ; 3 = South ; 4 = West  ;;; 0 = No-assigned
_N = 1; _E = 2; _S = 3; _W = 4; _N_A = 0;

var newX = 0; var newY = 0; var newDoor = _S;

global.arRooms[0, _X] = newX;
global.arRooms[0, _Y] = newY;
global.arRooms[0, _ROOM_NAME] = R_S;
sc_print_console("i: 0  ; x: " + string(newX) + "  ; y: " + string(newY) + "  ; room: " + string(R_S), true, true);    
    
    
var roomsCounter = 1;
var isLastRoom = false;
var lastX, lastY, nextX, nextY, lastDoor;
for(var i = 1; i < global.path_main_max; i += 1){

    // Actualizar: q los datos de la sala anterior pasen a ser los antiguos
    lastX = newX;
    lastY = newY;
    switch (newDoor)
    {
      case _S: lastDoor = _N; break;
      case _N: lastDoor = _S; break;
      case _E: lastDoor = _W; break;
      case _W: lastDoor = _E; break;
      default: break;
    }
    
    // Actualizar: la nueva posicion X y Y de la sala q se va a crear en este momento
    switch (lastDoor)
    {
      case _S: newY -= 1; break;
      case _N: newY += 1; break;
      case _E: newX -= 1; break;
      case _W: newX += 1; break;
      default: break;
    } 
    nextX = newX; // nextX nexy sera usado dentro del while()
    nextY = newY;
    
    //
    // ***********
    // Verificar si esta va a ser la ultima habitacion
    if (i > global.path_main_min){
        var numRan = sc_getRandom(((l * i * 7) + (i + 20) * 2 - 8));
        if(numRan < 51){
            // Aqui se creara la ultima habitacion
            isLastRoom = true;
        }
    }
    
    //
    // ***********  
    // Crear y validar esta nueva habiatacion princiapal; (y crear preparar otro en caso no sea la ultima)
    if(isLastRoom)
    {
        newDoor = _N_A;
    }
    else
    {
        var mpDone = false; var j = 0;
        while (!mpDone){
          
            var randomNum = sc_getRandom((i * (l * 7 + 1) * (7 + j) + ((i + j) * l)* 11 - 1));   
        
            if (randomNum < 44 ){
                // Tiene como predominancia crear habiataciones hacia el South o East
                if(lastDoor == _S){newDoor = _E;   
                }else{newDoor = _S;}
            }else{
                if(randomNum < 77){ // Mandar a West
                    if(lastDoor == _W){newDoor = _S;   
                    }else{newDoor = _W;}    
                }else{// Mandar al North
                    if(lastDoor == _N){newDoor = _E;   
                    }else{newDoor = _N;}    
                }
            }
                   
            // Validar si es posible ir a la direccion establecida anteriormente ->       
            switch (newDoor)
            {
              case _S: nextY += 1; break;
              case _N: nextY -= 1; break;
              case _E: nextX += 1; break;
              case _W: nextX -= 1; break;
              default: break;
            } 
            
            if(sc_room_nextRoomIsOk(nextX, nextY)){
                mpDone = true;
            }
            
            j += 1; 
        }
    }
       
    //
    // ***********
    // Intentar bifurcaciones
    var nextForkDoor = _N_A;
    if(!isLastRoom){
        // Se "intentera" crear una habiatacion alterna
    }
    
    //
    // ***********
    // Buscar el nombre de la habitacion segun las puertas
    var newRoomName = sc_room_getRoomName(lastDoor, newDoor, _N_A, _N_A);
    
    //
    // ***********
    // Asignar los datos y actualizar las variables
    global.arRooms[i, _X] = newX;
    global.arRooms[i, _Y] = newY;
    global.arRooms[i, _ROOM_NAME] = newRoomName;

    sc_print_console("i: " + string(i) + "  ; x: " + string(newX) + "  ; y: " + string(newY) + "  ; room: " + string(newRoomName), true, true);    
    
    if(isLastRoom){
        break;
    }
}

