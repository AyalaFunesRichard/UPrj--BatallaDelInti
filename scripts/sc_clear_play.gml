ini_open(working_directory + "play_conf.ini");

ini_write_string("Seed", "seed", "no-set");

ini_read_string("Play","gameStatus","no-set");

ini_read_real("Play", "level", -1);
ini_read_real("Play", "score", -1);
ini_read_real("Play", "diffMulti", -1);

ini_close();
