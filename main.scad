use <plate_twin_lasers.scad>
use <rib.scad>
use <nuts.scad>

h_nut = 4;
plate_depth_new = 2.8;
plate_len = 120;
plate_width = 33;

rib_height_new = 4;

translate([0, 0, -h_nut/2-plate_depth_new/2])
color("lime")
nut_small();
translate([0, -plate_len/2, -h_nut/2-plate_depth_new/2])
color("blue")
nut_big();
translate([0, plate_len/2, -h_nut/2-plate_depth_new/2])
color("blue")
nut_big();

plate(plate_depth_new);
translate([0, 0, -plate_depth_new/2 - rib_height_new/2])
rib(rib_depth=3, rib_height=rib_height_new);
//translate([0, 0, -plate_depth_new/2 - rib_height_new/2+10])
translate([0, 0, -plate_depth_new/2-rib_height_new/2])
rib_center_set(rib_depth=3, rib_height=rib_height_new);
