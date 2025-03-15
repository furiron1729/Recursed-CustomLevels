local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function one(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
5556............4555
5556............4555
5556............4555
5556............4555
5556............4555
5556............4555
pKK7....89bc....3KKp
I........tv........I
I........tv........I
I........tv........I
I........tv........I
K7...3KKKKKKKK7...3K
6.....45555556.....4
6.....45555556.....4
6.....45555556.....4
]])
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
.U012TTTT..TTTT012U.
.UklmUUUU..UUUUklmU.
.UklmUUUU..UUUUklmU.
.UklmUUUU..UUUUklmU.
.LklmH........LklmH.
.UEFGU........UEFGU.
.UUUUU........UUUUU.
.UUUUU........UUUUU.
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
....................
....................
....................
..012..........012..
..klm..........klm..
..klm..........klm..
..klm..........klm..
]])
  end
Spawn("player", 8, 10)
Spawn("key", 16.5, 10.5)
end

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
4646..............I.
4646..............I.
4646..............I.
4646..............I.
...............3KKp7
..................I.
..................I.
4646..............I.
4646..............I.
4646..............I.
4646...........3KKKK
4646............4555
KKKKKKK7........4555
5555556......4555555
55555555555555555555
]])
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
TTTTTTTTTTTTTTTH...L
UUUUUUUUUUUUUUUUUU.U
UUUUUUUUUUUUUUUUUU.U
....UUUUUUUUUUUUUU.U
....UUUUUUUUUUUUUU.U
....UUUUUUUUUUUUUU.U
....RUUUUUUUUUUH....
....UUUUUUUUUUUU....
.......LUUUUUUUU....
.......UUUUUU.......
....................
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
....................
....................
....d...............
....................
.......LTTTTTTTT....
.......UUUUUU.......
....................
]])
  end
Spawn("player", 10, 13)
Spawn("chest", 16.5, 9.5, "one")
Global("chest", 6.5, 11.5, "start")
Global("box", 16.5, 2.5)
Spawn("lock", 3, 5.5)
Spawn("crystal", 1, 5.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggg............gggg
gggg............gggg
gifg............gifg
gggg............gggg
gggg............gggg
gggg............gggg
gggg...............g
gifg...............g
gggg...............g
gggggggggggggggggggg
ggggi..........fgggg
gggg............gggg
gifg............gifg
gggg............gggg
gggg............gggg
]])
Spawn("player", 5.5, 8)
Spawn("box", 10, 8.5)
Spawn("lock", 16.5, 7.5)
Spawn("diamond", 18, 7.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = {start = { 0, 0.18, 0.36}, startb = {0.36, 0, 0.18 }}
light = {start = {0.24, 0.35, 0.48}, startb = {0.48, 0.24, 0.35}}