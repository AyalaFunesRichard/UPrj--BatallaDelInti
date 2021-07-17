idEnemy = argument0;

_X = 0; _Y = 1;

for(var i = 0; i < array_height_2d(global.arRooms); i += 1){
    
    if(global.arRooms[i, _X] == global.currentRoom_x){
    
        if(global.arRooms[i, _Y] == global.currentRoom_y){
     
            for(var j = 0; j < array_length_2d(global.arEnemy, i); j += 4){
            
                if(global.arEnemy[i, j] == idEnemy){
                
                    switch(global.arEnemy[i, (j + 3)]){
                        case "obDuende":{
                            global.duende_killed += 1;
                            break;}
                        case "obJarjacha":{
                            global.jarjacha_killed += 1;                        
                            break;}
                        case "obPishtaco":{
                            global.pishtaco_killed += 1;                            
                            break;}
                    }
                    
                    global.arEnemy[i, (j + 3)] = -1;
                    global.remainingEnemies -= 1;
                    break;
                }
            }
             
            break;   
        }
    }    
}

