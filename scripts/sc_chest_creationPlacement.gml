
// Aqui se lee si el obPlayer se encuentra en la ultima habitacion
// Se crea y coloca en la ultima habitacion de ser el caso

if(room != rmPortada){
    idRoom = array_height_2d(global.arRooms) - 1;

    if (global.arRooms[idRoom, 0] = global.currentRoom_x){
        if (global.arRooms[idRoom, 1] = global.currentRoom_y){
            instance_create(337, 337, obChest);
        }
    }
}
