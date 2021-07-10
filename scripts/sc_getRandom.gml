numAux = argument0;

var seed1 = sc_getNumber(numAux);   
var seed2 = sc_getNumber(numAux + seed1 + 13);  
var seed3 = sc_getNumber(numAux + seed2 * 3);   

var numRspt = ((seed1 * numAux) + (seed2 * seed1) + (round(seed3 / 3) * 7)); 
  
while (numRspt > 100){
    numRspt -= 100;
}

return numRspt; 
