module screw_7798(type, length) {

    d = [6,8,10,12,16,20,24,30,36,42,48];
    k = [4,5.5,7,8,10,13,15,19,23,25,30];
    e = [10.9,14.2,17.6,19.9,26.2,33,39.6,50.9,60.8,71.3,82.6];

    union() {

        translate([0, 0, -length])
            cylinder(h=length, r=d[type]/2);

        cylinder(h=k[type], r=e[type]/2);
        
    } // union
}

screw_7798(2, 30);