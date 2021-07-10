var pos = argument0;
///

while (pos > global.seed_max_lenght){
    pos -= 15;
}

return real(string_char_at(global.seed, pos));
