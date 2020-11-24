// SMD capacitors
module smd_cap(type){

    // Select following type-size:
    //		0	0402 / 1005
    //		1	0603 / 1608
    //		2	0805 / 2012
    //		3	1206 / 3216
    //		4	1210 / 3225
    //		5	1812 / 4532
    //		6	1825 / 4564
    //		7	2010 / 5025
    //		8	2512 / 6332

    l	= [1.0, 1.6, 2.0, 3.2, 3.2, 4.5, 4.5, 5.6, 5.6];
    w	= [0.5, 0.8, 1.25, 1.6, 2.5, 3.2, 6.4, 5.0, 6.3];
    h	= [0.55, 0.9, 1.3, 1.5, 1.7, 1.7, 1.7, 1.8, 2.0];

    border = 0.2;
    thin = 0.1;

    color_border = [1,1,0];
    color_body = [1,0,0];

    x1 = l[type]*border;
    x2 = l[type]*(1-border);

    union() translate([-((l[type]/2)-x1/2), 0, (h[type]/2)]) {

        translate([0,0,0]) color(color_border) {
            cube([x1, w[type], h[type]], center=true);
        }

        translate([2*x1,0,0]) color(color_body) {
            cube([l[type]-2*x1, w[type]*(1-thin), h[type]*(1-thin)], center=true);
        }

        translate([x2,0,0]) color(color_border) {
            cube([x1, w[type], h[type]], center=true);
        }

	} // union

} // smd_cap

smd_cap(5);