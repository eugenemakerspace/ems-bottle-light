include <cell_sizes.scad>
include <insert_shapes.scad>

$fn=48;
count=1;

pcb_dims = [10.75,10.75,7.25];

inserts(count);

module inserts(count=1) {
    slot_w = 20;
    start_x = count/2 * -slot_w;
    for(i=[0:count-1]) {
        x = start_x + slot_w/2 + i * slot_w;
        translate([x,0,0]) insert_end(aa_cell_d+aa_cell_w_clearance, pcb_dims);
    }
}
