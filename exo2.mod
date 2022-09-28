var xaa >= 0; 
var xab >= 0;
var xac >= 0;
var xba >= 0;
var xbb >= 0;
var xbc >= 0;
var xca >= 0;
var xcb >= 0;
var xcc >= 0;







minimize total : 0.1 *(210 * xaa + 500 * xab + 400 * xac + 350 * xba + 300 * xbb + 220 * xbc + 500 * xca + 200 * xcb + 250 * xcc);


subject to limit_1 :  xaa + xab + xac  <= 275;
subject to limit_2 :  xba + xbb + xbc  <= 400;
subject to limit_3 :  xca + xcb + xcc  <= 300;
subject to limit_4 :  xaa + xba + xca  = 200;
subject to limit_5 :  xab + xbb + xcb  = 550;
subject to limit_6 :  xac + xbc + xcc  = 225;

solve;





/*
valeur optimale : 24000
xaa = 200
xab = 0
xac = 75 
xba = 0
xbb = 250
xbc = 150
xca = 0
xcb = 300
xcc = 0

*/