//newSeed = argument0;

/// Seed
global.seed_max_lenght = 15;
global.seed = "no-set";

//global.seed = "606684196530660"; // puro NS
//global.seed = "598543874674819";
//global.seed = "123456789012345";


if(global.seed == "no-set"){
    global.seed = "";
    for(var i = 0; i < global.seed_max_lenght; i++){
        global.seed += string(round(random_range(0, 9)));
    }
}
/*
else{
    global.seed = newSeed;
}
*/

sc_print_console("Semilla:   " + global.seed, true, true);
