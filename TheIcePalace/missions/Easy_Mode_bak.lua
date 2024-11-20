-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : JiminP
--   Diamond level design : JiminP
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKK#JJJJJ#
#..........%.I....=4
#..........=.I.....4
#............I.....4
#JJJJJ#......I.....4
6$....I......I.....4
6.....I......I.....4
6.....I......I??!..4
6..!??##???..oKK7..4
6..3KKKKKK7..#.....4
6..................4
6..................4
6..........^.......4
55555555555555555555
55555555555555555555
]])
  Spawn("player", 4.5, 8)
  Spawn("generic", 9.5, 8.5)
  Spawn("crystal", 16.5, 2.5)
  Spawn("box", 14.5, 12.5)
  Global("chest", 3.5, 3.5, "start")
  Spawn("yield", 15.25, 7)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.g..g..&:./.ll...&..
&ll+.Vl.~:.+~Vl~.g*/
*:l/**V:lUUgA.V&gU..
.*U*~g*....*..*V.U+.
.//././U&:/.lg&*&g+.
U~.~.............gl:
.&;+............&.V.
*.A;............gA..
Ag./............glgV
;lUg............;+Al
Ul.g............:U+.
.&:+;lV&~*l;+*/&g*;.
..A;/g.Ug&&..AA/.U*.
&.;.:.*g~/~.l;+UVV:;
+;.g:lg~V.*.&gU.;&V*
]])
  Spawn("player", 10, 10)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gggggggggggggggggggg
gggggggggggggggggggg
hhhhhhhhhhhhhhhhhhhh
gggggggggggggggggggg
gggggggggggggggggggg
g..................g
g..................g
g..................g
gggggggggggggggggggg
gggggggggggggggggggg
hhhhhhhhhhhhhhhhhhhh
gggggggggggggggggggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 3.5, 8)
  Spawn("lock", 14.5, 7.5)
  Spawn("lock", 12.5, 7.5)
  Spawn("diamond", 17, 7.5)
  Spawn("key", 9.5, 8.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
