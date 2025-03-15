-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung, small contribution by QueuED
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.................455
J#...............455
.I...............3KK
.I................45
.I................45
.I................45
.I................45
.I................45
?I???????#TTTTTTT#45
555555556IUUUUUUUI45
555555556IUUUUUUUI45
555555556IUUUUUUUI45
555555556#UUHKLUU#45
55555555555555555555
55555555555555555555
]])
  Spawn("player", 4, 8)
  Global("key", 7, 8.5)
  Spawn("chest", 13.5, 11.5, "roomA")
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
...I.........#######
...I...............I
...I...............I
012ITTTTTTTTTTTTTTTI
klmIUUUUUUUUUUUUUUUI
klm####UUUUUUUUUU###
klm4556UUUUUUUUUU455
klmoKKqUUUUUUUUUU455
klmUUUUUUUUUUUUUU455
klmUUUUUUUUUUUUUU455
klmUUUUUUUUUUUUUU455
klm4556UUUUUUUUUU455
klm4556UUUUUUUUUU455
klm4556UUUUUUUUUU455
klm4556RRRRRRRRRR455
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
...I.........#######
...I...............I
...I...............I
...I...............I
...I...............I
...####..........###
ddd4556..........455
...oKKq..........455
.................455
.................455
.................455
0124556..........455
klm4556..........455
klm4556..........455
klm4556dddddddddd455
]])
  end
  Spawn("player", 18.3, 4)
  Spawn("yield", 5, 10)
  Spawn("lock", 3.5, 9.5)
  Spawn("crystal", 1.5, 1.75)
  Spawn("box", 5.5, 4.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
