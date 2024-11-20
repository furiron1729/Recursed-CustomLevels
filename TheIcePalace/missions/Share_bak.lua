-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
KK7.................
56..................
56..................
56................3K
56.................4
56.................4
55555556...........4
5p555556...........4
5IKKKKp7...........4
5I.................4
5I...........3KKpKKK
5I............45I555
5I5555I5555p5555I555
5I5555I5555I5555I555
]])
  Spawn("player", 5, 6)
  Spawn("chest", 10.5, 12.5, "common")
  Spawn("cauldron", 16.5, 10.5, "rootB")
  Spawn("lock", 6.5, 11.5)
  Spawn("box", 4, 12.5)
end

function common(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
56...............89a
56................tu
56................tu
56................tu
5#JJJJ#...........tu
56....$...........tu
56................tu
56................tu
56................tu
555556............tu
KKKKK7........????tu
55556.........455555
5p556.........4555p5
6#4555555555555556#4
5I5555555555555555I5
]])
  Spawn("player", 3.75, 3)
  Spawn("yield", 10, 12)
  Spawn("key", 3.5, 8.5)
end

function rootB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
556.............3KpK
KK7..............%I8
56...............=I.
56................I.
56................I.
56................I.
56................I.
56................I.
56..............?!I?
56..............####
5#######........4555
55555556........4555
5555555##########555
55555555555555555555
55555555555555555555
]])
  Spawn("player", 4.75, 9)
  Global("chest", 13.5, 11.5, "empty")
  Spawn("cauldron", 10.5, 11.5, "start")
  Spawn("crystal", 12, 4)
end

function empty(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
N_5555555555555555P(
O,55pKKKKKKKKKKp5555
KKKK7I..I..I..I3KKKK
9abc.I..I..I..I.89ab
tuv55555555555555tuv
tuv5############5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv5#..........#5tuv
tuv55555555555555tuv
####555555555555####
]])
  Spawn("player", 10, 12)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggggi.............gg
g.................gg
g.................gg
g.................gg
g..........gggeeeegg
g..........ggg....gg
g..........ggg....gg
g..........ggggggggg
g.................gg
ggggg.............gg
ggggg.............gg
gggggggggggggggggggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 16, 7)
  Spawn("lock", 11.5, 10.5)
  Spawn("lock", 13.25, 10.5)
  Spawn("diamond", 16, 10.5)
  Spawn("cauldron", 2, 9.5, "rejectB")
  Spawn("cauldron", 3.75, 9.5, "rejectB")
  Spawn("fan", 8, 11.5)
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
g................fgg
g..................g
g..................g
gggggggg...........g
ggggggi............g
ggg................g
ggg................g
ggg................g
ggg..............ggg
ggg..............ggg
gggggg...........ggg
gggggg........gggggg
gggggg........gggggg
gggggggggggggggggggg
]])
  Spawn("player", 4.5, 10)
  Spawn("cauldron", 15, 11.5, "reject")
  Spawn("chest", 4, 3.5, "rejectcommon")
end

function rejectcommon(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gi........fgg......g
g..........gg......g
g..........gg......g
g.......gg....gg...g
g.......gg....gg...g
gggge...gggggggg..eg
hghg....ggAggAgg...g
ghgg....ggAggAgg...g
hghge...gggggggggggg
ghgg..............fg
gggg...............g
gggge..............g
gggg...............g
gggggggggggggggggggg
]])
  Spawn("player", 2.5, 5)
  Spawn("yield", 17.5, 13)
  Spawn("key", 17.5, 8.5)
  Global("fan", 10.5, 8.5)
  Global("fan", 13.5, 8.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = {0, 0.18, 0.36}, rootB = {0.28, 0.1, 0.1}, reject = {0.5, 0.0, 0.5}, rejectB = {0.1, 0.4, 0.3}}
light = {start = {0.24, 0.35, 0.48}, rootB = {0.55, 0.18, 0.15}, reject = {0.8, 0.0, 0.8}, rejectB = {0.2, 0.7, 0.4}}
