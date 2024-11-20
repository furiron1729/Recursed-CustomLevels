-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Ruby level design    : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
6...............4555
6...............4555
6...............4555
6...............o555
6..................I
6..................I
6..................I
6...............4555
6...............4555
KK7.............4555
56..............4555
56###...........4555
56###...........4555
55555555555555555555
55555555555555555555
]])
  Spawn("player", 4, 10)
  Global("chest", 8.5, 12.5, "roomC")
  Spawn("crystal", 14.5, 3.5)
  Spawn("lock", 16.5, 5.5)
  Global("cauldron", 12.5, 12.5, "rootB")
end

function rootB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
5556...............4
5556...............4
5556...............4
555q...............4
I..I...............4
I..I...............4
I..I...............4
5556...............4
5556...............4
5556...............4
5556.............3KK
5556...........###45
5556...........###45
55555555555555555555
55555555555555555555
]])
  Spawn("player", 16, 10)
  Spawn("cauldron", 7.5, 12.5, "start")
  Spawn("chest", 11.5, 12.5, "start")
end

function roomC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
abc..............89a
uv................tu
uv................tu
uv................tu
uv................tu
uv89abc......89abctu
uv.tuv........tuv.tu
uv.tuv........tuv.tu
556tuv45555556tuv455
556tuv45555556tuv455
556tuv45555556tuv455
556tuv45555556tuv455
556tuv45555556tuv455
]])
  Spawn("player", 4.5, 6)
  Spawn("chest", 10, 9.5, "roomD")
end

function roomD(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
JJJJ#...........#JJJ
JJJ#..............89
bc.................t
v..................t
v..................t
v..................t
v..................t
v46ddddd46.........t
v46.....46.........t
v46.....46.......##t
v46#...#46.......##t
v46#...#46.....45555
v463KKK746.....45555
55555555555555555555
55555555555555555555
]])
  Spawn("key", 5.5, 11.5)
  Spawn("player", 12.5, 12)
end

function threadless(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VVVVVC.........BVVVV
VC...............BVV
VC................BV
VVC...............BV
VVC...BVVVVVVC....BV
VVVVVVVVVC........BV
BVVVVC..........BVVV
VVVC............BVVV
VVC...........BVVVVC
VVWWWWWWVVVVVVVVVVC.
VVC......BVVVVVVVVVV
VVC.............BVVV
VVVVC.............BV
VVVVVVC...........BV
BVVVVVVVVVVVVVVVVVVV
]])
  Spawn("player", 14.5, 13)
  Global("chest", 3.5, 4.5, "threadlessB")
  Global("chest", 4.5, 4.5, "threadlessB")
  Global("chest", 5.5, 4.5, "threadlessB")
end

function threadlessB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
......BVC.BVVVVC....
..BVVCBVC..BVVC.....
VC.BVVVVC..BVC.BVVVC
C.....BVC..BVC...BVV
VVVC.BVVWWWWVVC.BVVV
.....BVVC..BVVC.....
.....BVVC..BVVC.....
....BVVVC..BVVVC....
....BVVVC..BVVVC....
....BVVVC..BVVVC....
....BVVVC..BVVVC....
...BVVVVC..BVVVVC...
...BVVVVC..BVVVVC...
...BVVVVC..BVVVVC...
...BVVVVVVVVVVVVC...
]])
  Spawn("ruby", 10, 1.5)
  Spawn("player", 10, 13)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gg................gg
gg................gg
gg................gg
gg................gg
gg................gg
gggggg............gg
gggifg............gg
ggg..g............gg
gggggg............gg
ggggggggeeegg.....gg
gggifggg...gg.....gg
ggg..ggg...gg.....gg
gggggggghhhgg.....gg
gggggggghhhggggggggg
]])
  Spawn("player", 9.5, 12)
  Spawn("diamond", 4, 2)
  Spawn("chest", 14.5, 13.5, "rejectC")
  Global("cauldron", 16.5, 13.5, "rejectB")
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gg................gg
gg................gg
gg................gg
gg................gg
gg................gg
gg............gggggg
gg............gifggg
gg............g..ggg
gg............gggggg
gg.....gghhhgggggggg
gg.....gghhhgggifggg
gg.....gggggggg..ggg
gg.....ggggggggggggg
gggggggggggggggggggg
]])
  Spawn("chest", 5.5, 13.5, "rejectC")
  Spawn("player", 10.5, 9)
  Global("cauldron", 3.5, 13.5, "reject")
end

function rejectC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggghhhh..........ggg
gggi.............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
ggg..............ggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 4.5, 4)
  Global("fan", 10, 12.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = {0, 0.18, 0.36}, rootB = {0.28, 0.1, 0.1}, threadless= {0.68, 0.50, 0.68}, reject = {0.5, 0.0, 0.5}, rejectB = {0.1, 0.4, 0.3}}
light = {start = {0.24, 0.35, 0.48}, rootB = {0.55, 0.18, 0.15}, threadless = {0.9, 0.86, 0.41}, reject = {0.8, 0.0, 0.8}, rejectB = {0.2, 0.7, 0.4}}
