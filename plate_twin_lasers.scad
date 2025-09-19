$fn=64;

plate_depth_new=2.8;
plate_len=120;
plate_width=33;

module plate(plate_depth){
difference(){
    base(plate_depth);
    holes();
}
}
module holes(){
    translate([0,-plate_len/2,0])
    cylinder(h=40, d=6.5, center=true);
    translate([0,plate_len/2,0])
     cylinder(h=40, d=6.5, center=true);
}
module base(plate_depth){
    cube([plate_width,plate_len,plate_depth], center=true);
    color("red");
    translate([0,-plate_len/2,0])
    cylinder(h=plate_depth, d=plate_width, center=true);
    color("green")
    translate([0,plate_len/2,0])
    cylinder(h=plate_depth,d=plate_width, center=true);
}