var futureX = argument0;
var futureY = argument1;


for(var k = 0; k < array_height_2d(global.arRooms); k += 1){
    if(global.arRooms[k, _X] == futureX){
        if(global.arRooms[k, _Y] == futureY){
            return false;  // YA EXISTE 
        }
    }
}
return true; // NO EXISTE
