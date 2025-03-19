include <cell_sizes.scad>
include <insert_shapes.scad>
$fn=96;
count = 1;
cell_d = aa_cell_d + aa_cell_w_clearance;
holder_len = 75; 

cell_holders(count);

module cell_holders(count=1) {
    slot_w = 20;
    start_y = count/2 * -slot_w;
    for(i=[0:count-1]) {
        y = start_y + slot_w/2 + i * slot_w;
        translate([holder_len/2,y,cell_d/2]) rotate([0,-90,0]) {
            cell_holder(cell_d, length=holder_len);
            %translate([0,0,aa_cell_h/2]) aa_cell_mockup();
        }
    }
}
