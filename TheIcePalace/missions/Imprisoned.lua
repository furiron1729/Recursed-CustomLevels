local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
KKKK7...............
4556...........89abc
4556............tuv.
4556............tuv.
4556............tuv.
455555556.......tuv.
455555556...????tuv.
455pKKKKq...ddddtuv.
4556...=$.......tuv.
4556............tuv.
4556............tuv.
4556.....3K7....tuv.
455555556.I.45555556
455555556.I.45555556
455555556.I.45555556
]])
Spawn("player", 14, 11)
Spawn("crystal", 6, 3)
Global("chest", 6, 11.5, "two")
end

function two(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
KKKK7...............
4556...........89abc
4556............tuv.
4556............tuv.
4556............tuv.
455555556.......tuv.
455555556...????tuv.
455pKKKKq...ddddtuv.
4556...=#.......tuv.
4556............tuv.
4556............tuv.
4556............tuv.
4555555563K745555556
455555556.I.45555556
455555556.I.45555556
]])
  Spawn("player", 6, 4)
  Spawn("chest", 8, 4.5, "one")
  Spawn("box", 6, 11.5)
  Spawn("box", 6.5, 10.4)
  Spawn("lock", 8.5, 10.5)
end

function one(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
KKKK7...............
4556...........89abc
4556............tuv.
4556............tuv.
4556............tuv.
455555556.......tuv.
455555556...????tuv.
455pKKKKq...ddddtuv.
4556...=#.......tuv.
4556............tuv.
4556............tuv.
4556............tuv.
4555555563K745555556
455555556.I.45555556
455555556.I.45555556
]])
  Spawn("player", 6, 4)
  Spawn("lock", 8.5, 10.5)
  Spawn("generic", 6, 11.5)
  Spawn("key", 14, 11.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
ggggi fggggggi fgggg
gggggggggggggggggggg
gg................gg
gg................gg
gg................gg
ggggeeeggggggeeegggg
gifg...ggggggggggifg
gggg...ghgghg...gggg
gggg.....gg.....gggg
gggg.....gg.....gggg
ggggggg......ggggggg
gggifgg......ggifggg
ggggggg......ggggggg
gggggggeeeeeeggggggg
ggggggg......ggggggg
]])
  Spawn("player", 15, 9)
  Spawn("diamond", 16.5, 3.5)
  Spawn("lock", 14.5, 3.5)
  Spawn("key", 14.5, 5.6)
  Spawn("fan", 5.5, 9.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = { 0, 0.18, 0.36}, startb = {0.36, 0, 0.18 }}
light = {start = {0.24, 0.35, 0.48}, startb = {0.48, 0.24, 0.35}}