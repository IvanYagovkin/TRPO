include <plate_twin_lasers.scad>



module rib(rib_depth, rib_height){
    difference(){
        plate (plate_depth=rib_height);
        translate([0,0,0])
        cube([plate_width-rib_depth, plate_len, rib_height+1], center=true);
        color("red")
        translate([0, -plate_len/2,0])
        cylinder(h=rib_height+1, d=plate_width-rib_depth, center=true);
        color("green")
        translate([0,plate_len/2,0])
        cylinder(h=rib_height+1, d=plate_width-rib_depth, center=true);
    }
}