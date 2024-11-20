-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
55555555555555555555
KKKLUUUUIUUUUUUUHKKK
abQUUUUUIUUUUUUUUM9a
uvUUUUUUIUUUUUUUUUtu
uvUUUUUUIUUUUUUUUUtu
uvUUUUUUIUUUUUUUUUtu
uvUUU4556UUUUUUUUUtu
uvUUU4556UUUUUUUUUtu
uvUUUHKKLUUUUUHppqtu
uvUUUUUUUUUUUUU456tu
uvUUUUUUUUUUUUU456tu
uvUUUUUUUUUUUUU456tu
55555555555555555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
55555555555555555555
KKK7....I.......3KKK
abc.....I........89a
uv......I.........tu
uv......I.........tu
uv......I.........tu
uv...4556.........tu
uv...4556.........tu
uv...3KK7.....3ppqtu
uv.............456tu
uv.............456tu
uv.............456tu
55555555555555555555
55555555555555555555
]])
  end
  Spawn("player", 10, 12)
  Spawn("chest", 16.5, 8.5, "roomB")
  Global("box", 6.5, 6.5)
  Global("box", 12.5, 12.5)
  Spawn("lock", 7.625, 11.5)
  Spawn("lock", 6.375, 11.5)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
JJIJ#..........#JJI4
6I#..............#IJ
6I................I4
6#................#4
6..................4
6..................4
6TTTTTTTTTTTTTTTTTT4
6UUUUUUUUUUUUUUUUUU4
6UUUUUUUUUUUUUUUUUU4
6#UUUUUUUUUUUUUUUUU4
6IUUUUUUUUUUHKpKpKpK
6IUUUUUUUUUUU455####
6IUUUUUUUUUUU455555#
55555555555555555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
JJIJ#..........#JJI4
6I#..............#IJ
6I................I4
6#................#4
6..................4
6..................4
6..................4
6..................4
6..................4
6#.................4
6ITTTTTTTTTTHKpKpKpK
6IUUUUUUUUUUU4555555
6IUUUUUUUUUUU4555555
55555555555555555555
55555555555555555555
]])
  end
  Spawn("player", 17, 9)
  Spawn("chest", 14.5, 9.5, "start")
  Spawn("key", 1.5, 8.25)
  Spawn("crystal", 10, 3.50)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = {0, 0.18, 0.36}, rootB = {0.28, 0.1, 0.1}, threadless= {0.68, 0.50, 0.68}, reject = {0.5, 0.0, 0.5}, rejectB = {0.1, 0.4, 0.3}}
light = {start = {0.24, 0.35, 0.48}, rootB = {0.55, 0.18, 0.15}, threadless = {0.9, 0.86, 0.41}, reject = {0.8, 0.0, 0.8}, rejectB = {0.2, 0.7, 0.4}}
