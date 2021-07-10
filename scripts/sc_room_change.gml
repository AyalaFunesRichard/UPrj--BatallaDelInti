// Este el el que gestiona el cambio de habiatacion segun la
// POSICION ACTUAL del jugador (ya se debe de haber actualizado esta posicion)

var roomName = "";
var countRooms = array_height_2d(global.arRooms);
for (var i = 0; i < countRooms; i += 1)
{
    if (global.arRooms[i, _X] == global.currentRoom_x){
        if (global.arRooms[i, _Y] == global.currentRoom_y){
        
            roomName = string(global.arRooms[i, _ROOM_NAME]);
            room_goto(asset_get_index(roomName));
                       
            break;
        }    
    }
}
