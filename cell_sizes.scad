// AA-size cell
aa_cell_d=14.5;
aa_cell_w_clearance=1;
aa_cell_h=50.5;
aa_cell_nubbin_h=1.5;
aa_cell_dims = [aa_cell_d, aa_cell_h];

module aa_cell_mockup() {
    translate([0,0,-aa_cell_nubbin_h/2]) cylinder(d=aa_cell_d,h=aa_cell_h-aa_cell_nubbin_h,center=true);
    translate([0,0,aa_cell_h/2-aa_cell_nubbin_h/2]) cylinder(d=aa_cell_d/2,h=aa_cell_nubbin_h,center=true);
}

