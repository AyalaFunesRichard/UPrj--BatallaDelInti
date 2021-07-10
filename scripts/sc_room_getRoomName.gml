lastDoor = argument0;
nextDoor = argument1;

forkDoor1 = argument2;
forkDoor2 = argument3;

////
R_N = "rmPrefab_1_N";R_E = "rmPrefab_1_E";R_S = "rmPrefab_1_S";R_W = "rmPrefab_1_W";
R_NE = "rmPrefab_2_NE";R_NS = "rmPrefab_2_NS";R_NW = "rmPrefab_2_NW";R_ES = "rmPrefab_2_ES";R_EW = "rmPrefab_2_EW";R_SW = "rmPrefab_2_SW";
R_NSW = "rmPrefab_3_NSW";R_NEW = "rmPrefab_3_NEW";R_ESW = "rmPrefab_3_ESW";R_NES = "rmPrefab_3_NES";
R_NESW = "rmPrefab_4_NESW";

_N = 1; _E = 2; _S = 3; _W = 4; _N_A = 0;
///

if(forkDoor1 == _N_A && forkDoor2 == _N_A && nextDoor != _N_A){ // Habitacion de 2 puerdas
    if((lastDoor == _N && nextDoor == _E) || (lastDoor == _E && nextDoor == _N)) return R_NE;
    if((lastDoor == _N && nextDoor == _S) || (lastDoor == _S && nextDoor == _N)) return R_NS;
    if((lastDoor == _N && nextDoor == _W) || (lastDoor == _W && nextDoor == _N)) return R_NW;
    if((lastDoor == _E && nextDoor == _W) || (lastDoor == _W && nextDoor == _E)) return R_EW;
    if((lastDoor == _E && nextDoor == _S) || (lastDoor == _S && nextDoor == _E)) return R_ES;
    if((lastDoor == _S && nextDoor == _W) || (lastDoor == _W && nextDoor == _S)) return R_SW;
}else{
    if(forkDoor1 == _N_A && forkDoor2 == _N_A && nextDoor == _N_A){
        // Habitacion de 1 puerta ->
        switch (lastDoor)
        {
          case _S: return R_S; break;
          case _N: return R_N; break;
          case _E: return R_E; break;
          case _W: return R_W; break;
          default: break;
        }
    }else{
        if(forkDoor1 != _N_A && forkDoor2 != _N_A){
        // Habitacion de 4 puertas ->
            return R_NESW;
        }else{
        // Habitacion de 3 puertas ->
            
        }
    }
}
