var xa >= 0;
var xb >= 0;
var xc >= 0;
var xd >= 0;
var xe >= 0;

R1:  xa + xb + xc + xd + xe <= 100000;


maximize total : 0.1 * xa + 0.04 * xb + 0.07 * xc + 0.06 * xd + 0.08 * xe;

subject to first_limit : xb + xe >= 50000;
subject to second_limit : xa + xe <= 50000;
subject to third_limit : xb + xd >= 40000;
subject to fourth_limit : 0.04 * xb + 0.06 * xd >= 0.3*(0.1*xa + 0.04 * xb + 0.07 * xc + 0.06* xd + 0.08 * xe);

solve;



/* valeur optimale 7100 */

/*
xa = 13500
xb = 13500
xc = 9999.999
xd = 26499.99
xe = 36500
/*

