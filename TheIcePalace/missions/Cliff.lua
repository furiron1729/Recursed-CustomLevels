-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
.................89a
..................tu
..................tu
..................tu
#####.............tu
55556.............tu
55556.............tu
55556.............tu
55556.............tu
55556.............tu
55556.............tu
555555555555pKKKKp55
5555555555556....455
5555555555556....455
]])
  Spawn("player", 9.5, 11)
  Spawn("crystal", 2.5, 1)
  Global("box", 6, 11.5)
  Spawn("chest", 15, 11.5, "roomA")
  Spawn("key", 6.25, 10.5)
end

function roomA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
56.........#JJJJJJJJ
56.........I$.......
56.........I........
K7.........I........
6..........I........
6..........#....89ab
6................tuv
6................tuv
6................tuv
6....455556#45555555
q....o55555555555555
Id...I55555555555555
I....I55555555555555
I....I55555555555555
#4556#55555555555555
]])
  Spawn("key", 3, 13.5)
  Spawn("player", 8, 8)
  Spawn("lock", 11.5, 7.5)
  Spawn("box", 18.5, 4.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
