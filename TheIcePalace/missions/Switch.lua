-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED, choongmyoung
--   Ruby level design    : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
KKKK7..........3KKKK
KKK7............3KKK
456..............456
456..............456
456..............456
456..............456
456..............456
456..............456
456..............456
456..............456
456.....4556.....456
opq?????4556?????opq
####################
55555555555555555555
55555555555555555555
]])
  Spawn("player", 5.5, 11)
  Spawn("chest", 10, 9.5, "roomC")
  Global("cauldron", 14.5, 11.5, "rootB")
end

function rootB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
KKKK7..........3KKKK
9abc............89ab
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv..............tuv
tuv.....4556.....tuv
tuv?????4556?????tuv
####################
55555555555555555555
55555555555555555555
]])
  Spawn("player", 14.5, 11)
  Spawn("chest", 10, 9.5, "roomC")
  Spawn("cauldron", 5.5, 11.5, "start")
end

function roomC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
J#........??????!...
5I........4555556..4
5I........4555556..4
5I........4555556..4
5#JJJ#dddd#JJJJJ#..4
abc................4
uv.................4
uv.................4
uv...........455I555
uv...........455I555
uv456........455#JJJ
uvopq........4555555
55555555555555555555
55555555555555555555
]])
  Spawn("player", 5.5, 4)
  Spawn("lock", 16.5, 7.5)
  Spawn("crystal", 14.5, 7.5)
  Global("key", 1, 0)
end

function threadless(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VWWWWWWWWWWWWWWWWWWV
VC................BV
VC................BV
VVWWWWVVVVVVVVWWWWVV
VVC..............BVV
VVC..............BVV
VVVWWWWVVVVVVWWWWVVV
VVVC............BVVV
VVVC............BVVV
VVVVWWWWVVVVWWWWVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVVWWWWVVWWWWVVVVV
VVVVVC........BVVVVV
VVVVVC........BVVVVV
]])
  Spawn("player", 10, 11)
  Spawn("chest", 10, 2.5, "threadless2")
end

function threadless2(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVC..........BVVVV
VVVVVVVVVVVVVVVVVVVV
]])
  Spawn("player", 10, 13)
  Spawn("ruby", 10, 1.5)
  Global("box", 8, 13.5)
  Global("chest", 12, 13.5, "threadless2")
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = {0, 0.18, 0.36}, rootB = {0.28, 0.1, 0.1}, threadless= {0.68, 0.50, 0.68}, reject = {0.5, 0.0, 0.5}, rejectB = {0.1, 0.4, 0.3}}
light = {start = {0.24, 0.35, 0.48}, rootB = {0.55, 0.18, 0.15}, threadless = {0.9, 0.86, 0.41}, reject = {0.8, 0.0, 0.8}, rejectB = {0.2, 0.7, 0.4}}
