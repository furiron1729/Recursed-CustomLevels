-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKKKKKKKKp
6..................4
6..................4
6..................4
6..................4
6....#........#....4
6....I........I....4
6....I........I....4
#JJJJ#zzzzzzzz#JJJJ#
6AAAA#AAAAAAAA#AAAA4
6AAAAAAAAAAAAAAAAAA4
6AAAAAAAAAAAAAAAAAA4
6AAAAAAAAAAAAAAAAAA4
55555555555555555555
55555555555555555555
]])
  Spawn("player", 3, 7)
  Spawn("lock", 14.5, 11.5)
  Global("chest", 3, 12.5, "roomA")
  Spawn("chest", 17, 12.5, "roomB")
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKKp5pKKKp
6............456...4
6..................4
6..................4
6..................4
6............3K7ddd4
6..................4
5556...............4
5556zzzzzzzzzzzzzzz4
5555556AAAAAAAAAAAA4
5555556AAAAAAAAAAAA4
5555555556AAAAAAAAA4
5555555556AAAAAAAAA4
55555555555555555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKKp5pKKKp
6............456...4
6..................4
6..................4
6..................4
6............3K7ddd4
6..................4
5556...............4
5556...............4
5555556............4
5555556............4
5555555556.........4
5555555556.........4
55555555555555555555
55555555555555555555
]])
  end
  Spawn("lock", 13.75, 3.5)
  Spawn("lock", 15.25, 3.5)
  Spawn("crystal", 17.5, 3)
  Spawn("player", 16.5, 12)
  Spawn("key", 13, 12.5)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKKKKKKKKp
6AAAAAAAAAAAAAAAAAAI
6AAAAAAAAAAAAAAAAAAI
6AAAAAAAAAAAAAAAAAAI
6AAAAAAAAAAAAAAAAA#I
6AAAAAAAAAAAAAAA###I
6AAAAAAAAA#JJJJJJJJ#
6AAAAAAAAAIAAAAAAAA4
6AAAAAAAAAIAAAAAAAA4
KKKKrAAAAA#AAAAAAAA4
5556AAAAAAAAAAs9abw4
5556AAAAAAAAAAAtuvA4
5556AAAAAAAAAAAtuvA4
5555555556#4556tuv45
555555555555556tuv45
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKKKKKKKKKKKKKp
6..................I
6..................I
6..................I
6.................#I
6...............###I
6.........#JJJJJJJJ#
6.........I........4
6.........I........4
KKKKr.....#........4
5556..........s9abw4
5556...........tuv.4
5556...........tuv.4
5555555556#4556tuv45
555555555555556tuv45
]])
  end
  Spawn("generic", 16.5, 9.5)
  Spawn("lock", 10.5, 11.5)
  Spawn("player", 2.75, 8)
  Spawn("yield", 13, 12)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
*.gVgVg:/-.....&.g..
-/V~../:V*.g--/.:./.
g--.-g.-:/-/:/&..&.g
~:&..+:.&+..g/g&.--/
.;..//-.....~-..g...
.;V&:...........~-gg
&.;;............-V./
./.:............-:V-
*g..g...........-.V.
/-V/;...........~.g/
./&-&g.........g**g.
*gV*~~/&gg::+//.&--&
.:.g//&:/+&:~~g-;/.+
..//-:-V://-g::~--;.
-&&/~/:-V-&/--&.+-&~
]])
  Spawn("player", 9.5, 10)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
g..................g
g..................g
g..................g
g..................g
g....g........g....g
g....g........g....g
g....g........g....g
gggggg........gggggg
g....g........g....g
g..................g
g..................g
g..................g
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 17, 7)
  Spawn("lock", 14.5, 11.5)
  Spawn("diamond", 17, 11)
  Spawn("chest", 3, 12.5, "rejectA")
end

function rejectA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
g..................g
g..................g
g..................g
g..................g
g..................g
g..................g
g......ggg.........g
g......ghg.........g
g......ggg.........g
gggg............gggg
gghg............ghgg
gggg............gggg
gggggggggggggggggggg
gggggggggggggggggggg
]])
  Spawn("player", 5.5, 12)
  Spawn("lock", 7.75, 11.5)
  Spawn("lock", 9.25, 11.5)
  Spawn("key", 14, 12.5)
  Spawn("generic", 12, 12.5)
  Spawn("yield", 17.5, 9)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
