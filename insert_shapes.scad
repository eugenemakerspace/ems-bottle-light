include <rcolyer-threads.scad>;
$fn=96;

module cell_holder(cell_d, wall=1, length=100) {
    radius=cell_d/2+wall;
    difference() {
        tube(radius, length, wall);
        translate([radius+wall, 0, length/2]) cube([radius*1.66, radius*2, length*1.01], center=true);
    }
}

module threaded_top(od1, cell_d, wall=1) {
    od2 = cell_d;
    length = 20;
    nub = 8;
    nub_r = od2/2;
    diameter = 13;
    tolerance=0.4;
    thickness = length;
    ScrewHole(diameter, thickness, tolerance=tolerance, pitch=1) {
        translate([0,0,0]) cylinder(h=thickness-nub, d=od1);
        translate([0,0,length-nub/2]) cylinder(r=nub_r,h=nub,center=true);
        translate([0,0,length-nub+0.125]) cylinder(r1=od1/2, r2=nub_r, h=0.25, center=true);
    }
}

module insert_end(cell_d, pcb_dims, length=16, wall=1) {
    radius=cell_d/2;

    translate([0,0,length/2]) difference() {
        cylinder(r=radius*0.99, h=length, center=true);
        cylinder(r=1.5, h=length*1.01, center=true);
        translate([0.75,0,pcb_dims[1]/2]) {
            cube([pcb_dims[2], radius*2, pcb_dims[1]], center=true);
        }
    }
}

module tube(radius, height, wall=1) {
    difference() {
        translate([0,0,height/2]) cylinder(r=radius, h=height, center=true);
        translate([0,0,height*0.501]) cylinder(r=radius-wall, h=height*1.02, center=true);
    }
}
