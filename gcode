; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
M140 S{material_bed_temperature} ; start preheating the bed
G28 ; Home all axes
M190 S{material_bed_temperature} ; heat to bed setting in Cura and WAIT
G29 ; BLTOUCH Mesh Generation
G1 Z10.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z10.3 F5000.0 ; Move to start position
M104 S{material_print_temperature} TO ; start preheating hotend
M109 S{material_print_temperature} TO ; heat hotened to setting in Cura and WAIT
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
