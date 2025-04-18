-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED
--   Diamond level design : 280chan
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKq............
I......I............
I......I............
I......I............
#......#ddddddd#JJJ#
9abc...=.......I...4
tuv............I...4
tuv????!??...456...#
tuv4555556ddd456...4
tuv4555556...456...4
tuv4555556...3K7...#
tuv4555556.........4
####555556.........4
5555555556.........4
55555555555555555555
]])
  Spawn("player", 2, 4)
  Global("chest", 16.5, 3.5, "start")
  Spawn("box", 18, 3.5)
  Spawn("crystal", 17.5, 6.75)
end

function reject()
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gg................gg
gg................gg
gg................gg
gg..........gggggggg
gg..........gggggggg
gg................gg
gg................gg
gg................gg
ggggggggggggggg...gg
ggggggggggggggg...gg
ggggggggggggggg...gg
ggggggggggggggg...gg
ggggggggggggggg...gg
gggggggggggggggggggg
]])

  Spawn("player", 3.4, 8)
  Spawn("key", 7.1, 8.5)
  Global("chest", 16.5, 13.5, "flood")
  Spawn("lock", 12.5, 2.5)
  Spawn("lock", 14.5, 2.5)
  Spawn("diamond", 16.5, 2.5)

  Spawn("record", 5.6, 8.5, "sounds/voices/v5r")
end

function flood(is_wet)
if is_wet then
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gggggggggggggggggggg
gggggg............gg
ggghgg............gg
gggggg............gg
gggggg........gggggg
gg............ggghgg
gg............gggggg
gg............gggggg
ggzzzgTTTTTTTTgggggg
ggAAAgUUUUUUUUgggggg
ggAAAgSUUUUUUUgghggg
ggAAAgUUUUUUUUgggggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
else
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
gggggggggggggggggggg
gggggg............gg
ggghgg............gg
gggggg............gg
gggggg........gggggg
gg............ggghgg
gg............gggggg
gg............gggggg
ggzzzg........gggggg
ggAAAg........gggggg
ggAAAge.......gghggg
ggAAAg........gggggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
end
  Spawn("player", 10, 12)
  Spawn("yield", 16.5, 4)
  Global("fan", 7.5, 12.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
