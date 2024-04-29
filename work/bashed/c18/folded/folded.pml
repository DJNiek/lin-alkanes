load folded.xyz
hide everything
show sticks
show spheres
set stick_radius, .06
set sphere_scale, .18
set sphere_scale, .10, elem H
set bg_rgb=[1, 1, 1]
set stick_quality, 50
set sphere_quality, 4
color gray50, elem C
color red, elem O
color slate, elem N
color gray98, elem H
set stick_color, black
set ray_trace_mode, 1
set ray_texture, 2
set antialias, 3
set ambient, 0.5
set spec_count, 5
set shininess, 50
set specular, 1
set reflect, .1
set dash_gap, 0
set dash_color, black
set dash_gap, .15
set dash_length, .05
set dash_round_ends, 0
set dash_radius, .05
set fog, off
ray
preset.ball_and_stick(selection='all')
set two_sided_lighting, value=1
rebuild
turn x,0
turn y,0
turn z,0
zoom complete=1, buffer=2.0
png c4.png, width=600, height=400, dpi=300, ray=1
quit
