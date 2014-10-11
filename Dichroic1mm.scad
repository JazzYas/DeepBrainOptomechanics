// the holder for the lens for LED and the excitation filter are not in teh design yet.
// the emission filter can sit in the belly of the CMOS cylinder and get secured at its bottom.  

// this difference subtracts the inside of the CMOS cylinder. 
difference(){
//this difference subtracts the inner cylinder that goes through the whole casing
difference(){

union(){
	//this is the upper cylinder to hold the CMOS
	translate([0, 0, 8]) cylinder( h = 10, d = 8.5, center = true, $fn = 200);
		

	//This is the lower cylinder that secures the microscope on the implant.

	difference(){
		translate([0, 0, -4]) cylinder( h = 3, d = 11.6, center = true, $fn = 200);
		translate([0, 0, -5]) cylinder( h = 3, d= 10.1, center = true, $fn = 200);
	}



	//this opens the wall of the main cube to the LED casing
	difference(){

		// this makes the grooves for the DM
		difference(){
			// this makes the central cube to hold the DM
			difference(){
				translate([0., 0., 0]) cube([5.5, 5.5, 6], center = true, $fn = 200);
				translate([0, 1, 0]) cube([4, 6.5, 4], center = true, $fn = 200);
				} 
			// this is the groove for the DM. I take the size of DM and add 0.2mm to each dimenssion to make sure the mirror fits. 
			rotate([0, 45, 0]) translate([0, 0.5, 0]) cube([1.2,5.9,5.9], center = true, $fn = 200);
		}

	// this is the wall towards the LED casing, to be removed.
	translate([2.5, 0, -0.5]) cube([1.5, 3.5, 3], center = true, $fn = 200);
	}


	//this is the casing of the LED. 
	//this difference makes the tiny indentation to put the LED board in
	difference(){
			//this difference makes the main casing.
			difference(){
				translate([4.75, 0,0.25])cube([4.5, 4.5, 5.5], center = true, $fn = 200);
				translate([4.75, 0, 0.25])cube([5, 2.5, 4], center = true, $fn = 200);
			}
		translate([7, 0, 0.5]) cube([1, 3.5, 5], center = true);
	}
}
// cylinder that creates the opening through the whole casing
cylinder(h = 20, d = 4.5, center = true, $fn = 200);
}
// cylinder that holloes the CMOS cylinder. 
translate([0, 0, 9]) cylinder( h = 10, d= 6.5, center = true, $fn = 200);
}