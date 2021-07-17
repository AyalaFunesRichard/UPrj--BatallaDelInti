// Porbabilidad de cantidad de enemigos por sala
P_1 = 25; P_2 = 40; P_3 = 23; P_4 = 7; P_5 = 4; P_7 = 1;

// Probabilidad Duente ; Probabilidad Jarjacha ; Probabilidad Pishtaco
PD = 40; PJ = 30; PP = 30; 


// Limpiar el array, esto es mas que nada cuando se cambia de nivel
arrCleaner [0,0] = -1;
global.arEnemy = arrCleaner;


msg = "CREACION DE ENEMIGOS";
sc_print_console(msg, true, true);

for (var i = 0; i < array_height_2d(global.arRooms); i += 1){

    numRan = sc_getRandom((i * 17 + (global.level * 7)) + global.remainingEnemies);

    //var list = ds_list_create();
    
    // Escoger cantidad de enemigos en esta habitacion
    var amount = 0;
    if(numRan < P_1) amount = 1;
    else if(numRan < (P_1 + P_2)) amount = 2;
    else if(numRan < (P_1 + P_2 + P_3)) amount = 3;
    else if(numRan < (P_1 + P_2 + P_3 + P_4)) amount = 4;
    else if(numRan < (P_1 + P_2 + P_3 + P_4 + P_5)) amount = 5;
    else amount = 7;
    
    // Escoger la posicion y el enemigo
    msg = "idRoom: " + string(i);
    sc_print_console(msg, true, false);
    for(var j = 0; j < (amount * 4); j += 4){
    
        var _x = (160 + (round(sc_getRandom((numRan * 13) + (j * (j + 1)) + (global.level * 111)) / 10) * 32));
        var _y = (160 + (round(sc_getRandom((numRan * 7) + ((j + 1) * (j + _x)) + (global.level * 31)) / 10) * 32));
    
        global.arEnemy[i, j] = j;             // id del Enemigo
        global.arEnemy[i, (j + 1)] = _x;      // posicion de aparicion en X
        global.arEnemy[i, (j + 2)] = _y;      // posicion de aparicion en Y
        
        var ranNum = sc_getRandom((_y + (_y * j)) + (global.level * 3));
    
        if(ranNum < PD){
            global.arEnemy[i, (j + 3)] = "obDuende";      // Tipo de enemigo
        }else{
            if(ranNum < (PD + PJ)){
                global.arEnemy[i, (j + 3)] = "obJarjacha";
            }else{
                global.arEnemy[i, (j + 3)] = "obPishtaco";
            }
        }
        
        msg = "idEnemy: " + string(j) + "  ; tipo: " + global.arEnemy[i, (j + 3)] + "  ; x: " + string(global.arEnemy[i, (j + 1)]) + "  ; y: " + string(global.arEnemy[i, (j + 2)]);
        if(j + 1 == amount) sc_print_console(msg, false, true);
        else sc_print_console(msg, false, false);
        
        global.remainingEnemies += 1;
    }
}
