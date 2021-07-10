
global.level += 1;

sc_room_creator();

global.currentRoom_x = 0;
global.currentRoom_y = 0;

sc_difficulty_update();

obPlayer.health += 60; if(obPlayer.health > 100) obPlayer.health = 100;
obPlayer.x = 337;
obPlayer.y = 337;

sc_room_change();

