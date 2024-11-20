-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED
--   Ruby level design    : QueuED, choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="empty_l", ["1"]="sand_top", ["2"]="empty_r", ["3"]="sand_dl", ["4"]="sand_d", ["5"]="sand_dr", ["6"]="dirt_ul", ["7"]="dirt_u", ["8"]="dirt_ur", ["9"]="block_ull", ["a"]="block_ul", ["b"]="block_u", ["c"]="block_ur", ["d"]="block_urr", ["e"]="slope_l", ["f"]="slope_r", ["g"]="slope_dark_l", ["h"]="sope_dark_r", ["i"]="slope_dirt_r", ["j"]="dummy20", ["k"]="sand_l", ["l"]="sand", ["m"]="sand_r", ["n"]="sand_ddl", ["o"]="blockdark", ["p"]="sand_ddr", ["q"]="dirt_l", ["r"]="dirt", ["s"]="dirt_r", ["t"]="block_ll", ["u"]="block_l", ["v"]="block_cr", ["w"]="block_r", ["x"]="block_rr", ["y"]="slope_sand_l", ["z"]="slope_sand_r", ["A"]="floor_l", ["B"]="floor_r", ["C"]="floor_dark_ur", ["D"]="cloud_l", ["E"]="cloud", ["F"]="cloud_r", ["G"]="cloud_ledge", ["H"]="sand_dddl", ["I"]="line", ["J"]="sand_dddr", ["K"]="dirt_dl", ["L"]="line_dark", ["M"]="dirt_dr", ["N"]="block_dll", ["O"]="block_dl", ["P"]="block_d", ["Q"]="block_dr", ["R"]="block_drr", ["S"]="dummy55", ["T"]="dummy56", ["U"]="dummy57", ["V"]="dummy58", ["W"]="floor_dark_r", ["X"]="glyph_a", ["Y"]="glyph_b", ["Z"]="glyph_c", ["@"]="glyph_d", ["#"]="glyph_e", ["$"]="glyph_f", ["%"]="glyph_g", ["="]="glyph_h", ["?"]="glyph_i", ["!"]="glyph_j", ["^"]="glyph_k", ["&"]="glyph_l", ["/"]="glyph_m", [":"]="glyph_n", [";"]="cactus_u", ["*"]="cactus_ll", ["+"]="cactus_l", ["~"]="cactus", ["-"]="cactus_r", ["_"]="cactus_rr"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
...ef...............
..evvf..............
.evvvvf.............
gooooooh............
ooooooooh...........
vvvCoooooh..........
vvvvvvvCooh.........
vvvvvvvWoooh....km..
vvvvvvvWooooh...ll..
vvvvvvvWoooooh.0ll2.
vvvvvvvvvvvvvvzlllll
vvvvvvvvvvvvvvvi4444
]])
  Spawn("player", 14, 12)
  Spawn("lock", 6, 7.5)
  Spawn("crystal", 4, 1)
  Spawn("box", 19, 12.5)
  Spawn("cauldron", 11.25, 12.5, "rootB")
end

function rootB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
...............;....
...............~....
...............~;...
..............;-_...
..............*+..0k
m2......0kllllllllll
llllllllllllllllllll
44444444444444444444
77777777777777777777
rrrrrrrrrrrrrrrrrrrr
]])
  Global("cauldron", 5, 10.5, "rootC")
  Spawn("chest", 15.5, 9.5, "roomD")
  Spawn("player", 10.5, 9)
end

function rootC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
....................
.;..................
.~..................
.~;.................
lllm2...............
llllm2......0klm2...
llllllllllllllllllll
445lllllllllllllllll
78J44444444444444444
rM777777777777777777
]])
  Spawn("player", 6.5, 10)
  Spawn("chest", 2, 8.5, "roomD")
  Spawn("cauldron", 10.5, 10.5, "start")
  Spawn("key", 18, 10.5)
end

function roomD(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
rrrrrrrrrrrrrrrrrrrr
9abbbbbbbbbbbbbbbbcd
9uvvvvvvvvvvvvvvvvwd
tu&?IIIIIIIIIIII%:wx
tu@$............X?wx
tuZX............$^wx
tu:Y............:&wx
tu#%............#?wx
tu@#...AvvvvB...ZXwx
tuZ/...IIIIII...!?wx
tuY&............X/wx
tuX^............=%wx
tuvvvvvvvvvvvvvvvvwx
tOPPPPPPPPPPPPPPPPQx
rLLLLLLLLLLLLLLLLLLr
]])
  Spawn("player", 10, 7)
  Spawn("lock", 7.5, 10.5)
  Spawn("generic", 10, 11.5)
  Spawn("lock", 12.5, 10.5)
end

function threadless(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
EEF..............DEE
EEF..............DEE
EEF..............DEE
EEEEEEF..........DEE
EEEEEEEEEEEEEF...DEE
EF.......DEEEEF..DEE
EF.........DEEGGGGEE
EF..DEF..........DEE
EF..DEF..........DEE
EF..DEGGGGGEGGGGGGEE
EF........DEF....DEE
EF........DEF....DEE
EGGGGGGGGGGEF....DEE
EF........DEF....DEE
EF........DEF....DEE
]])
  Spawn("player", 3, 10)
  Spawn("chest", 9.75, 3.5, "threadlessB")
end

function threadlessB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
EEEEEEF...........DE
EF................DE
EF................DE
EF..........DEF...DE
EEEEEEEEEGGGGEF...DE
EEF.........DEF...DE
EF..........DEF...DE
EF....DEGGGGGEF...DE
EF....DEF.........DE
EF...DEEF.........DE
EF...DEEEEEEEEEEF.DE
EEEEEEEEEEEEEEEEF.DE
EEEEEEEEEEEEEEEEF.DE
EEEEEEEEEEEEEEEEF.DE
EEEEEEEEEEEEEEEEEEEE
]])
  Spawn("player", 3.5, 10)
  Spawn("lock", 4.75, 2.5)
  Spawn("ruby", 2.75, 2.5)
  Spawn("key", 17.5, 13.5)
  Spawn("chest", 7.5, 3.5, "threadlessC")
end

function threadlessC(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
EEEEEEEEEEEEEF....DE
EEEEEF....DEEEEEEF.D
EEEEF.......DEEEEEFD
EEEEF..........DEEEE
EEEF............DEEE
EEF.............DEEE
EEF.............DEEE
EEEF............DEEE
EEEF...........DEEEE
EEEEF.........DEEEEE
EEEEF.........DEEEEE
EEEEEEF......DEEF.DE
EEEEEEEEEEEEEEEEEF.D
.DEEEEEEEEEEEEEEEF.D
...DEEEEEEEEEEEEF..D
]])
  Spawn("player", 8, 11)
  Spawn("generic", 11.5, 11.5)
end

tiles = "../TheIcePalace/tiles/desert"
pattern = "../TheIcePalace/backgrounds/sky"
dark = {start = {0.15, 0.35, 0.7}, rootB = {0.6, 0.2, 0.1}, rootC = {0.3, 0.3, 0.3}, threadless= {0.68, 0.50, 0.68}}
light = {start = {0.3, 0.5, 1}, rootB = {0.8, 0.5, 0.2}, rootC = {0.4, 0.4, 0.4}, threadless = {0.9, 0.86, 0.41}}
