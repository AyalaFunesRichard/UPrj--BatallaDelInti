
ini_open(working_directory + "play_conf.ini");

var _seed = ini_read_string("Seed", "seed", "no-set");

var _gameStatus = ini_read_string("Play","gameStatus","no-set");

var _level = ini_read_real("Play", "level", -1);
var _score = ini_read_real("Play", "score", -1);
var _diffMulti = ini_read_real("Play", "diffMulti", -1);

ini_close();

if(_gameStatus == "no-set"){
    // El juego no ha empezado .... o cerraron el juego de manera incorrecta

    sc_seed_manager("no-set");
    
}else{
    
    sc_seed_manager(_seed);

}



