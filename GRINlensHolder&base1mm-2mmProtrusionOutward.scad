difference(){
	difference(){	
		union(){
		translate([0,0,-1.5]) cylinder(h = 1.5,d = 1.5, $fn = 200);
		difference(){
			cylinder(h = 7.75,d = 9.3, $fn = 200);
			translate([0,0,1])cylinder(h = 6.75,d = 7.8, $fn = 200);
			}
		}
		cylinder(h = 10,d = 0.5, center=true,$fn = 200);
	}

	
translate([0,3.25,3])cube([1,3,4],center=true);
translate([-2.8,-1.6,3])rotate([0, 0, 30])cube([3,1,4],center=true);
translate([2.8,-1.6,3])rotate([0, 0, 330])cube([3,1,4],center=true);}//sin(30)=r/y,y=-3.25/sin(30),x=-3.25*cos(30)