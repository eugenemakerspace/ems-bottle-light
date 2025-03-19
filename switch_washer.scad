wall=1.5;
id=12.5;
od=12.5 + 5*2;
$fn=48;

count=1;

washers(count);

module washers(count=1) {
  slot_w = od+1;
  start_x = count/2 * -slot_w;
  for(i=[0:count-1]) {
      x = start_x + slot_w/2 + i * slot_w;
      translate([x,0,0]) difference() {
        cylinder(d=od, h=wall, center=true);
        cylinder(d=id, h=wall*1.01, center=true);
      }
  }
}


