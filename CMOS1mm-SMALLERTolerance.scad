difference(){
union(){
//This is the main cylinder
translate([0, 0, 0]) cylinder( h = 11, d = 9.8, center = true, $fn = 200);

// this makes the seat for CMOS (sqaure shaped) 
difference(){
translate([0, 0, 6])cube([16, 16, 2], center = true);
translate([0, 0, 6.5])cube([14, 14, 1.5], center = true);
}
}
//this hollows out the whole thing to opne optical path.
translate([0, 0, 0]) cylinder( h = 15, d = 8.8, center = true, $fn = 200);
}