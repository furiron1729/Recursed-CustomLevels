-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Diamond level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="door_uul", ["1"]="door_uur", ["2"]="container_01", ["3"]="container_02", ["4"]="container_03", ["5"]="container_04", ["6"]="floor_l", ["7"]="floor_m", ["8"]="floor_r", ["9"]="railing_u", ["a"]="door_ul", ["b"]="door_ur", ["c"]="container_05", ["d"]="container_06", ["e"]="container_07", ["f"]="container_08", ["g"]="brick_l", ["h"]="brick_m", ["i"]="brick_r", ["j"]="railing_m", ["k"]="door_dl", ["l"]="door_dr", ["m"]="container_09", ["n"]="container_10", ["o"]="container_11", ["p"]="container_12", ["q"]="flower_l", ["r"]="flower_r", ["s"]="brickfloor_s", ["t"]="railing_d", ["u"]="door_ddl", ["v"]="door_ddr", ["w"]="container_13", ["x"]="container_14", ["y"]="container_15", ["z"]="container_16", ["A"]="pot_l", ["B"]="pot_r", ["C"]="brickfloor", ["D"]="box_1", ["E"]="box_2", ["F"]="box_3", ["G"]="box_4", ["H"]="black_l", ["I"]="black", ["J"]="black_hole", ["K"]="black_r", ["L"]="ledge_x", ["M"]="ledge", ["N"]="floor_ledge_l", ["O"]="floor_ledge_r"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
hi..................
h...................
h...................
h...................
h...................
h...................
h................DE.
h................FG.
h................DED
h................FGF
hqrqr...........DEDE
hABAB...........FGFG
ssssssssssssssssssss
CCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCC
]])
  Spawn("player", 9, 11)
  Spawn("chest", 12.5, 11.5, "roomC")
  Spawn("cauldron", 4, 10.5, "roomB")
end

function roomB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
..................gh
...................h
...................h
...................h
...................h
...................h
.DE................h
.FG................h
EDE................h
GFG................h
DEDE...........qrqrh
FGFG...........ABABh
ssssssssssssssssssss
CCCCCCCCCCCCCCCCCCCC
CCCCCCCCCCCCCCCCCCCC
]])
  Spawn("player", 11, 11)
  Spawn("chest", 7.5, 11.5, "roomD")
  Spawn("cauldron", 16, 10.5, "start")
end

function roomC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
h..............9...a
h..............j...k
h..............t...u
1...999........67777
b...jjj...........gh
l...jjjqr..........h
vM..tttAB..........h
7777777778.........h
hhhhi............DEh
h................FGh
h..............2345h
h..............cdefh
h....DE........mnoph
h....FG........wxyzh
ssssssssssssssssssss
]])
  Global("chest", 11, 13.5, "roomC")
  Spawn("key", 2.5, 6.5)
  Spawn("player", 4, 13)
end

function roomD(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
b..................h
l..................h
v..................h
77778........999...0
hi...........jjj...a
h..........qrjjj...k
h..........ABttt..Mu
h.........677777NMO7
hDE............ghhhh
hFG................h
h2345..............h
hcdef..............h
hmnop........DEMMMMh
hwxyz........FG....h
ssssssssssssssssssss
]])
  Spawn("crystal", 2.5, 1.5)
  Spawn("lock", 4.5, 1.5)
  Spawn("player", 16, 13)
  Spawn("yield", 17.5, 6)
  Global("chest", 9, 13.5, "roomD")
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
IIIK.............HII
III...............II
III...............II
III...............II
III...............II
III...............II
III............IIIII
III............IJIII
III............IIIII
IIIIII.........IIIII
IIIIJIIII......IJIII
IIIIIIIJILLLIIIIIIII
IIIIIIIII...IJIIIIII
IIIIJIIII...IIIIJIII
IIIIIIIJILLLIIIIIIII
]])
  Spawn("player", 10.5, 13)
  Spawn("cauldron", 4.5, 8.5, "rejectB")
  Spawn("chest", 16.5, 5.5, "rejectC")
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
IIIK.............HII
III...............II
III...............II
III...............II
III...............II
IIIIII............II
IIIIJI............II
IIIIII............II
III..III..........II
III..IJI....IIIIIIII
III..III.IIIIJIIJIII
III...IIIIJIIIIIIIII
IIIIIIIJIIII..III.II
IIIIJIIII..IIIIJI.II
IIIIII..IIIIJIIII.II
]])
  Spawn("chest", 4.5, 4.5, "rejectC")
  Spawn("cauldron", 15, 8.5, "reject")
  Spawn("player", 10.5, 9)
  Spawn("fan", 6.75, 7.5)
end

function rejectC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
IIIIIIIIIIIIIIIIIIII
IK........HIIIIIIIII
I..........IIK...HII
I..........II.....II
I..........II.....II
IIILLLLIIIIII.....II
III...............II
III...............II
III...............II
III...............II
III............IIIII
III.........IIIIJIII
IIIIII......IJIIIIII
IIIIIIIIIIIIIIIIIIII
IIIIIIIIIIIIIIIIIIII
]])
  Spawn("player", 16.5, 9)
  Global("chest", 8.5, 4.5, "rejectD")
end

function rejectD(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
IIIIIIIIIIIIIIIIIIII
IK.......HIIK.....HI
I.........II.......I
I.........II.......I
I..................I
I..................I
I..................I
I..................I
IIIIII.............I
IIJIJI.............I
IIIIII........IIIIII
II...I........IJIJII
IIIIIIIIIIIIIIIIIIII
IIIIIIK......HIK.HII
IIIIII........IIIIII
]])
  Spawn("diamond", 3.5, 2)
  Spawn("player", 16.5, 9)
end

tiles = "../TheIcePalace/tiles/town"
pattern = "../TheIcePalace/backgrounds/gray"
dark = {start = {0.05, 0.05, 0.4}, roomB = {0.2, 0.05, 0.05}, reject = {0.5, 0.0, 0.5}, rejectB = {0.1, 0.4, 0.3}}
light = {start = {0.10, 0.3, 0.6}, roomB = {0.5, 0.1, 0.15}, reject = {0.8, 0.0, 0.8}, rejectB = {0.2, 0.7, 0.4}}
