var x1 >= 0; 
var x2 >= 0;
var x3 >= 0;
var x4 >= 0;


minimize total : 0.5 * x1 + 0.6 * x2 + 0.64 * x3 + 0.3 * x4 ;


subject to limit_1 :  x1 +  x2 + x3 +  x4  = 4000;
subject to limit_2 :  0.3 * x1+  0.05 * x2 + 0.2 * x3 + 0.1 * x4 >= 800;
subject to limit_3 :  0.1 * x1 + 0.3 * x2 + 0.15 * x3 + 0.1 * x4 >= 600 ;
subject to limit_4 :  0.2 * x1 + 0.15 * x2 + 0.2 * x3 + 0.3 * x4 >= 1000 ;



solve;

/*

Pas de solution 
*/


