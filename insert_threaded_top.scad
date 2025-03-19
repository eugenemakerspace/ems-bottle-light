include <cell_sizes.scad>
include <insert_shapes.scad>

$fn=64;
count=1;
wall=1;
od = 17.5;

threaded_tops(count);

module threaded_tops(count=1) {
  slot_w = 20;
  start_x = count/2 * -slot_w;
  cell_d = aa_cell_d + aa_cell_w_clearance;
  for(i=[0:count-1]) {
      x = start_x + slot_w/2 + i * slot_w;
      translate([x,0,0]) threaded_top(od, cell_d);
  }
}
