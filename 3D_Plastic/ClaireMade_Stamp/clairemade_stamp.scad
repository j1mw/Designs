text="Clairemade.com";
//letter_size=15;
letter_size=13;
length=50;
width=12;
height=3;
font="Chalkboard";

//you will need to change the size to fit the text you put in


color("blue")
difference() {
    // remove of a corner in top side
    union() {
        cube([length,width,height],true);
        translate([0,0,-height/2])
        linear_extrude(height) 
        {
            circle(r=10);
        }
    }
   
    translate([length/2, width/2,0])
    rotate([0,0,45]) cube([5,5,10],true);
    
    translate([-length/2, width/2,0])
    rotate([0,0,45]) cube([5,5,10],true);
}

translate([length/2 -length/50,-2.5,height/2 -3])
{
    linear_extrude(5)
    {
        scale(0.4)
        {
             mirror(0,90,0)
            {   
                text(text,size=letter_size,font=font);
            };
        };
    };
};