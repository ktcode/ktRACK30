//
// ktRack30
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;



A();


module A()
difference()
{
    union()
    {
        translate([0, 15, 0]) cube([85+6,  55+6, 45+6+5]);
        translate([0, 0, 0]) cube([85+6,  85+6, 3]);
    }
    translate([3, 15+3, 3]) cube([85,  55+6+gap1, 45]);
    translate([(85+6-60)/2, -3, 3]) cube([60,  100, 100]);
    translate([(85+6-60)/2, 15, -3]) cube([60,  60, 100]);
    translate([3, 15+3, 45+3]) rotate([0, 90-30, 0]) cube([20,  70, 20]);
    translate([85+6-3, 15+3, 45+3]) rotate([0, 180+30, 0]) cube([20,  70, 20]);
    
    translate([7, 7, 3]) rotate([180, 0, 0]) rear_screw_hole();
    translate([85+6-7, 7, 3]) rotate([180, 0, 0]) rear_screw_hole();
    translate([85+6-7, 85+6-7, 3]) rotate([180, 0, 0]) rear_screw_hole();
    translate([7, 85+6-7, 3]) rotate([180, 0, 0]) rear_screw_hole();   
}




module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.8, 1.8, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.8+0.7, 1.8, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 2.75+0.4, 2.75-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 2.75+0.4, 2.75+0.4, $fn=30);
}