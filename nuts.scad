d_small_nut = 15;
d_big_nut = 24;
h_nut = 5;

translate([d_big_nut, 0, 0])
nut_small();
nut_big();

module nut_small() {
    difference() {
        cylinder(d=d_small_nut, h=h_nut, center=true);
        cylinder(h=40, d=6.5, center=true);
    }
}

module nut_big() {
    difference() {
        cylinder(d=d_big_nut, h=h_nut, center=true);
        cylinder(h=40, d=6.5, center=true);
    }
}
