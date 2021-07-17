if(room != rmPortada){
    for (var i = 0; i < array_height_2d(global.arRooms); i += 1){
        if (global.currentRoom_x == global.arRooms[i, 0]) {
            if (global.currentRoom_y == global.arRooms[i, 1]) {
                
                var enemyAux;
                for (var j = 0; j < array_length_2d(global.arEnemy, i); j += 4){
                
                    if(global.arEnemy[i, (j + 3)] != -1){
                        enemyAsset = asset_get_index(global.arEnemy[i, (j + 3)]);
                        enemyAux = instance_create(global.arEnemy[i,(j + 1)], global.arEnemy[i,(j + 2)], enemyAsset);
                        enemyAux.idObjeto = j;
                    }                
                }
                
                break;
            }
        }
    }
}
