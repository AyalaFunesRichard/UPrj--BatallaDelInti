
if(audio_is_playing(sn_bgDanzaDeNegritos_Ica)){
    audio_play_sound(sn_bgPallasDeCorongo, 1, true);
    audio_stop_sound(sn_bgDanzaDeNegritos_Ica);
    
    global.bgPlaying = "Pallas de Corongo"
}else{
    audio_play_sound(sn_bgDanzaDeNegritos_Ica, 1, true);
    audio_stop_sound(sn_bgPallasDeCorongo);
    
    global.bgPlaying = "Danza de negritos"
}

