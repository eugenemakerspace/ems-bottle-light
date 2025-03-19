$fn=96;

// The switch top collar leaves nothing to grip when tightening a nut on the barrel threads
// If we cut a little notch on opposite sides (12 oclock and 6 oclock) this socket wrench
// will slip over it and make tightening easier
 
notch_wrench();

module notch_wrench() {
    nut_d=13;
    od=18;
    id=14.5;
    notch=1;
    difference() {
        union() {
          cylinder(d=od, h=nut_d);
          translate([0,0,2]) cube([nut_d+4,nut_d+4,4], center=true);
        }
        translate([0,0,-0.01]) cylinder(d=id, h=nut_d*1.1);
    }
    #translate([id/2,0,nut_d*0.51]) rotate([0,180,0]) cylinder(r=notch, h=nut_d, center=true, $fn=3);
    #translate([-id/2,0,nut_d*0.51]) rotate([0,0,0]) cylinder(r=notch, h=nut_d, center=true, $fn=3);
}
