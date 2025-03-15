-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
#KKKqUUUUUUUUUUIUUU4
6UUUIUUUUUUUUUUHKKK#
6UUUIUUUUUUUUUUjUUU4
6UUUIUUUUUUUUUUDUUU4
#UHKqUUUUUUUUUUDUUU4
6UUUUUUUUUUUUUUXHKK#
6UUUUUUUUUUUUUUUUUU4
6UUUUUUUUUUUUUUUUUU4
#KKKqUUUUUUUUUUUUUU4
6UUUUUUUUUUUUUUoKKK#
6UUUUUUUUUUUUUUUUUU4
6UUUUUUUUUU#UUUUUUU4
555555555556UUUUUUU4
555555555556U4555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
#KKKq..........I...4
6...I..........3KKK#
6...I..............4
6...I..............4
#.3Kq..............4
6..............j3KK#
6..............D...4
6..............D...4
#KKKq..........X...4
6..............oKKK#
6..................4
6..........#.......4
555555555556.......4
555555555556T4555555
55555555555555555555
]])
  end
  Spawn("player", 2.5, 3)
  Spawn("lock", 4.5, 10.5)
  Spawn("lock", 15.5, 11.5)
  Global("box", 17.5, 8.5)
  Spawn("crystal", 17.5, 3.5)
  Global("chest", 2.5, 11.5, "start")
  Global("chest", 17.5, 12.5, "start")
  Spawn("key", 2.5, 7.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gg.....g.....g.....g
gg.....g.....g.....g
gggghggggghggggghggg
ggi...fgi...fgi...fg
gg.....g...........g
gg.....g...........g
gg.....g...........g
gg.....g...........g
gg...........g.....g
gg...........g.....g
gg...........g.....g
gg...........g.....g
gg...........g.....g
ggggggggeeeeeggggggg
gg.....g.....g.....g
]])
  Spawn("player", 10.5, 11.5)
  Global("generic", 5, 12.5)
  Spawn("chest", 3, 12.5, "rejectA")
  Spawn("chest", 7, 12.5, "rejectB")
  Spawn("diamond", 16.5, 10.5)
end

function rejectA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
gggggggggUggggUUUggg
gggUggggUUUggUUUUUgg
ggUUUggUUUUUgUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUgUUUUUgUUUUUgg
gUgggUgggggggggggggg
gUUUUUgUUUUUgUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUUUUUUUUUUUUUgg
gUUUUUgUUUUUgUUUUUgg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
ggggggggg.gggg...ggg
ggg.gggg...gg.....gg
gg...gg.....g.....gg
g.................gg
g.................gg
g.................gg
g.....g.....g.....gg
g.ggg.gggggggggggggg
g.....g.....g.....gg
g.................gg
g.................gg
g.................gg
g.....g.....g.....gg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  end
  Spawn("player", 15.5, 12)
  Spawn("lock", 6.5, 10.5)
  Spawn("lock", 6.5, 4.5)
  Spawn("lock", 12.5, 4.5)
  Global("key", 9.5, 12.5)
  Global("fan", 3.5, 12.5)
  Global("box", 15.5, 6.5)
end

function rejectB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
gggUUUggggUggggggggg
ggUUUUUggUUUggggUggg
ggUUUUUgUUUUUggUUUgg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUgUUUUUgUUUUUg
ggggggggggggggUgggUg
ggUUUUUgUUUUUgUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUgUUUUUgUUUUUg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
ggg...gggg.ggggggggg
gg.....gg...gggg.ggg
gg.....g.....gg...gg
gg.................g
gg.................g
gg.................g
gg.....g.....g.....g
gggggggggggggg.ggg.g
gg.....g.....g.....g
gg.................g
gg.................g
gg.................g
gg.....g.....g.....g
gggggggggggggggggggg
gggggggggggggggggggg
]])
  end
  Spawn("player", 4.5, 12)
  Spawn("lock", 13.5, 10.5)
  Spawn("lock", 13.5, 4.5)
  Spawn("lock", 7.5, 4.5)
  Spawn("key", 10.5, 12.5)
  Spawn("yield", 4.5, 6)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.g..g..&:./.ll...&..
&ll+.Vl.~:.+~Vl~.g*/
*:l/**V:lUUgA.V&gU..
.*U*~g*....*..*V.U+.
.//././g&:/.lg&*&g+.
U~.~.............gl:
.&;+............&.V.
*.A;............gA..
Ag./............glgV
;lUg.....ee.....;+Al
Ul.g............:U+.
.&:+............g*;.
..A;.............U*.
&.;.............VV:;
+;.g............;&V*
]])
  Spawn("player", 10, 14)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
