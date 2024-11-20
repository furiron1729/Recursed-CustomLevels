-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
I.I.I...........I.I.
JJIJ#...........#JIJ
I.I...............I.
IJ#...............I.
I.................I.
I...........#.#...IJ
I.................I.
I.................I.
I.................I.
I...#JJJ#...#JIJ#JIJ
I...I.I.I...I.I.I.I.
I...IJJJIJJJIJJJIJJJ
I.#.I.I.I.I.I.I.I.I.
JJIJJJIJJJIJJJIJJJIJ
I.I.I.I.I.I.I.I.I.I.
]])
  Spawn("player", 6.5, 8)
  Spawn("crystal", 16.5, 5.5)
  Spawn("key", 2.5, 11.5)
  Global("chest", 10.5, 10.5, "roomA")
  Spawn("lock", 14.5, 7.5)
  Spawn("lock", 12.5, 7.5)
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
KKKKKKKKKKKKKKKKKKKK
bQUUUUUUUUUUUUUUUUM9
vUUUUUUUUUUUUUUUUUUt
vUUUUUUUUUUUUUUUUUUt
vUUUUUUUUUUUUUUUUUUt
vUUUUUUUUUUUUUUUUUUt
vUUUUUUUUUUUUUUUUUUt
vUUUUUUUUUU#UUUUUUUt
vUUUUUUUUUUUUUUUUUUt
6UUUUUU456UUUUUUUUUt
6UUUUUU456UUU456UUUt
6456UUU456456456456t
64564564564564564564
64564564564564564564
64564564564564564564
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
KKKKKKKKKKKKKKKKKKKK
bc................89
v..................t
v..................t
v..................t
v..................t
v..................t
v..........#.......t
v..................t
6TTTTTT456.........t
6UUUUUU456...456...t
6456UUU456456456456t
64564564564564564564
64564564564564564564
64564564564564564564
]])
  end
  Spawn("player", 5.5, 11)
  Spawn("lock", 11.5, 9.5)
  Spawn("yield", 2.5, 10)
  Spawn("generic", 17.5, 10.5)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
g.g........~+.&.*.&l
..UUV+:g.Agg~:.ggglg
..&+.l&.&;A.:V*VV&..
..V.-*.ll*&-U.~;.++.
...-+.l.U-V..A;.l/+.
*...gg/.gl.g&&/.....
~~:-l&.........+A~./
:..+/...........+.A.
.&+gg...........-+~.
.lUA:.........../V.~
.lV/g.........../:l*
Ag.glg-/-lg/+.+g.:&&
.U-&..gg.U.A&V......
V..-.+&.l*.lUAg~.;..
l&.-+.;.:.~Vl&AU~...
]])
  Spawn("player", 11, 10)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gghhhhhhhhhhhhhhhhgg
ggi..............fgg
gg................gg
gg................gg
gg................gg
gg......ggggeeeeeegg
gg................gg
gg................gg
gg.............ggggg
ggggggggg......gi.gi
.fg.fg.fg......g..g.
..g..g..geeegggggggg
ggggggggg...gi.gi.gi
.fg.fg.fg...g..g..g.
..g..g..geeegggggggg
]])
  Spawn("chest", 3.5, 8.5, "rejectA")
  Spawn("chest", 13.5, 10.5, "rejectB")
  Spawn("player", 10.5, 12)
  Spawn("lock", 8.5, 7.5)
  Global("fan", 6, 8.5)
end

function rejectA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
gg.................g
ggTTTTTTTTTTTTTTTTTg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggUUUUUUUUUUUUUUUUUg
ggggggggggggUgUUUUUg
ggggggggggggUgUUUUUg
ggUUUUUUUUUUUgUUUUUg
ggUUUUUUUUUUUggggggg
ggUUUUUUUUUUUggggggg
ggUUUUUUUUUUUggggggg
ggUUUUUUUUUUUggggggg
gggggggggggSSggggggg
gggggggggggUUggggggg
gggggggggggggggggggg
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
gg.................g
gg.................g
gg.................g
gg.................g
gg.................g
gggggggggggg.gTTTTTg
gggggggggggg.gUUUUUg
gg...........gUUUUUg
gg...........ggggggg
gg...........ggggggg
gg...........ggggggg
gg...........ggggggg
gggggggggggeeggggggg
ggggggggggg..ggggggg
gggggggggggggggggggg
]])
  end
  Spawn("player", 5.5, 11)
  Spawn("yield", 3.5, 11)
  Global("key", 3.5, 4.5)
  Global("key", 5.5, 4.5)
end

function rejectB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
UUUUggggggggggggUUUU
UUUUggggggggggggUUUU
UUUUggUUUUUUUUggUUUU
UUUUggUUUUUUUUggUUUU
UUUUggUUUUUUUUgggggg
UUUUggggggUUUUgggggg
UUUUggUUUUUUUUggUUUU
UUUUggUUUUUUUUggUUUU
UUUUggUUUUUUUUggUUUU
ggggggUUUUUUUUggUUUU
ggggggUUUUUUUUggUUUU
UUUUggUUUUUUUUggUUUU
UUUUggUUUUUUUUggUUUU
UUUUggggggggggggUUUU
UUUUggggggggggggUUUU
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....gggggggggggg....
....gggggggggggg....
....gg........gg....
....gg........gg....
....gg........gggggg
....gggggg....gggggg
....gg........gg....
....gg........gg....
....gg........gg....
gggggg........gg....
gggggg........gg....
....gg........gg....
....ggTTTTTTTTgg....
....gggggggggggg....
....gggggggggggg....
]])
  end
  Spawn("player", 12.5, 12)
  Spawn("diamond", 7.5, 3.5)
  Spawn("lock", 9.5, 3.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
