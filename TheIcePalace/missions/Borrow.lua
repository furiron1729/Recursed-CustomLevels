-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED, small contribution by choongmyoung
--   Tile placement       : QueuED

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
6.................3K
6..................4
6..................4
6..................4
6..................4
555555555556.......4
pKKpKKpKKpK7.......4
5555556............4
pKpKpK7............4
6........#zzzzzzzzz4
6........IAAAAAAAAA4
6........IAAAAAAAAA4
6........IAAAAAAAAA4
556ddddddI##########
556......I5555555555
]])
  Spawn("player", 5.75, 4)
  Spawn("box", 3.25, 4.5)
  Spawn("chest", 8.75, 4.5, "pit")
  Spawn("chest", 11, 12.5, "key")
  Spawn("chest", 2, 12.5, "oobleck")
end

function pit(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKp556AAAAAAAAI
6AAAAAA4556AAAAAAAAI
6AAAAAAnKKrAA#AAAAAI
6AAA#AAAAYZZ@#AAAAAI
6AAAIAAAAAAAAAAAAAAI
6AAAIAAAAAAAAAAAA455
6xAAIAAAAAAAAAAAA455
6UUU45556AAAA#AAA455
6AAA455555555IAAA455
6xAA455555555I555555
6AAA#########I555555
6AAAAAA02AAAAI555555
56AAAAAkmAAAAI555555
56AAAAAkmAAAAI555555
5555556km4555I555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
pKKKKKKp556........I
6......4556........I
6......3KK7..#.....I
6...#........#.....I
6...I..............I
6...I............455
6d..I............455
6...45556YZZ@#zzz455
6...455555555IAAA455
6d..455555...I555555
6...######...I555555
6............I555555
56...........I555555
56...........I555555
5555556024555I555555
]])
  end
  Spawn("player", 7.5, 6)
  Global("box", 6, 6.5)
  Spawn("yield", 5, 13)
  Spawn("chest", 17.75, 4.5, "key")
  Spawn("lock", 9.5, 12.5)
  Spawn("crystal", 11.5, 12.5)
  Spawn("lock", 13.5, 5.5)
end

function key(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
55555556............
55555556..........89
KpKpKpK7...........t
6011112zzzzzz#zzzzzt
6klFFFGAAAAAAIAAAAAt
6kmAAAAAAAAAAIAAAAAt
6kmAAAA455555556AAAt
6kmAAAAnKKKKKKKrAAAt
6kl1112AAAAAAAAAAAAt
6EFFFFGAAAAAAAAAAAAt
6AAAAAAAAAAAAAAAA455
6AAAAAA##########455
6AAAAAA4555555556455
6######4555555556455
64555564555555556455
]])
    Spawn("player", 4.75, 7)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
55555556............
55555556..........89
KpKpKpK7...........t
6............#.....t
6............I.....t
6............I.....t
6011112455555556...t
6klFFFG3KKKKKKK7...t
6km................t
6km................t
6km..............455
6kl1112##########455
6EFFFFG4555555556455
6######4555555556455
64555564555555556455
]])
    Spawn("player", 4.75, 10)
  end
  Global("key", 9.75, 5.5)
end

function oobleck(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
I.II.II......I.III.I
IzIIzIIzzzzzzIzI#IzI
IAIIAI#AAAAAA#AIAIAI
IAIIAIAAAAAAAAAIAIAI
IAI#AIAAAAAAAAAIAIAI
IAIAA#AAA##AAAAIAIAI
IAIAAAAs9aabwAA#AIAI
IAIAAAAAtuuvAAAAAIAI
IAIAAAAAtuuvAAAAA#AI
IA#AAAAAtuuvAAAAAAAI
IAAAAAAAtuuvAAAAAAAI
IAAAAAAAtuuvAAAAAAAI
IAAAAAAAtuuvAAAAAAAI
####################
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
I.II.II......I.III.I
I.II.II......I.I#I.I
I.II.I#......#.I.I.I
I.II.I.........I.I.I
I.I#.I.........I.I.I
I.I..#...##....I.I.I
I.I....89aabc..#.I.I
I.I.....tuuv.....I.I
I.I.....tuuv.....#.I
I.#.....tuuv.......I
I.......tuuv.......I
I.......tuuv.......I
I.......tuuv.......I
####################
55555555555555555555
]])
  end
  Spawn("player", 15, 12)
  Spawn("generic", 10, 4.5)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
:+~~:+;;*~:;*~;::::~
::;*:hh;+55*:pK*~*~:
***;:gg:;%$*:6.*+**:
;*;;:~;*++**~*:***:;
;:;C.;;gg~~UH:*.I**;
;~~VW;~fg**55+:.I*;*
:;~::*;~....;+::;;:;
:gg;;gg+....*gB;*pp*
:.g*;gi*....+gB+:##*
:~:**:;:....***:+~~:
:*;KK+*z4:+ge::.g;*:
~~:55*;A4+*g.~+.g:;:
~:;:*:*~**:;;++****;
::+::hg+:d#*+hh;*~;;
::~*:..:*.4:*.f*~:*;
]])
  Spawn("player", 10, 9)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
