module exploded() {
font = "DejaVu Sans:style=Bold";
letter_size = 30;
height = 10;
string1 = "Handmade ";
string2 = "ClaireMade.Com";
linear_extrude(height) {
    text(string1, size = letter_size, font = font, halign = "center", valign = "center", $fn = 64);
}
}

module dxf() {
    projection(cut=true) {
        exploded();
    }
}

dxf();
