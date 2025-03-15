-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="door_uull", ["1"]="door_uu", ["2"]="door_uurr", ["3"]="buoy_1", ["4"]="buoy_2", ["5"]="buoy_3", ["6"]="buoy_4", ["7"]="ceiling_r1", ["8"]="ceiling_r2", ["9"]="ceiling_r1_w", ["a"]="ceiling_r2_w", ["b"]="bough", ["c"]="bough_h", ["d"]="ropeknot", ["e"]="light_off", ["f"]="light_on", ["g"]="brick_l", ["h"]="brick", ["i"]="brick_r", ["j"]="dirt_s", ["k"]="door_ull", ["l"]="door_u", ["m"]="door_urr", ["n"]="buoy_5", ["o"]="rail", ["p"]="emptyblock", ["q"]="block", ["r"]="ceiling_r3", ["s"]="ceiling_r4", ["t"]="ceiling_rr_1", ["u"]="ceiling_rr_2", ["v"]="bough_v", ["w"]="ledge", ["x"]="rope", ["y"]="dummy35", ["z"]="dummy36", ["A"]="dummy37", ["B"]="dummy38", ["C"]="dummy39", ["D"]="dirt", ["E"]="door_dll", ["F"]="door_d", ["G"]="door_drr", ["H"]="buoy_6", ["I"]="block_1", ["J"]="block_2", ["K"]="block_3", ["L"]="ceiling_r5", ["M"]="ceiling_r6", ["N"]="ceiling_rr_3", ["O"]="ceiling_rr_4", ["P"]="wall_1", ["Q"]="water_s", ["R"]="water_s_rope", ["S"]="dummy55", ["T"]="dummy56", ["U"]="dummy57", ["V"]="dummy58", ["W"]="dummy59", ["X"]="dirt_deco", ["Y"]="door_ddll", ["Z"]="door_dd", ["@"]="door_ddrr", ["#"]="buoy_7", ["$"]="buoy_8", ["%"]="buoy_9", ["="]="drawer_1", ["?"]="drawer_2", ["!"]="drawer_3", ["^"]="drawer_4", ["&"]="drawer_5", ["/"]="wall_2", [":"]="water", [";"]="pillar"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
78..................
rs78................
LMrs78..............
^&LMrstu............
q...LMNO............
2....;..............
m............bccdccb
G............v..x..v
@............v..x..v
IJKIJKq......g..x..i
hhhhhhi......gQQRQQi
hhhhhhijjjjjjg::;::i
DDDDDDDDDDDDDg:::::i
DDDDDDDDDDDDDg:::::i
XXXXXXXXXXXXXghhhhhi
]])
  Spawn("player", 10.25, 10)
  Spawn("chest", 8.25, 10.5, "roomA")
  Spawn("lock", 5.5, 7.5)
  Spawn("crystal", 3, 5.5)
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
;......LMrs9a:::::::
;........LMrs9a:::::
q...P......LMrs9a:::
2.../........LMrs9a:
m..we...f......LMrs9
G...=?!^&........LMr
@...e...e...e......L
=?!^&...=?!^&......0
3456P.......e...e..k
n.../.......=?!^&..E
H........e.........Y
#$%.....wq........=?
:::e.....qooooooooIJ
:::q.....pKIJKIJKIJK
:::IJKIJKIJKIJKIJKIJ
]])
    Spawn("player", 2, 10)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
;......LMrs78.......
;........LMrs78.....
q...P......LMrs78...
2.../........LMrs78.
m..we...f......LMrs7
G...=?!^&........LMr
@...e...e...e......L
=?!^&...=?!^&......0
....P.......e...e..k
..../.......=?!^&..E
.........e.........Y
3456....wq........=?
n........qooooooooIJ
H..q.....pKIJKIJKIJK
#$%IJKIJKIJKIJKIJKIJ
]])
    Spawn("player", 2, 13)
  end
  Global("box", 7.5, 13.5)
  Spawn("key", 2.5, 6.5)
  Spawn("yield", 4.75, 13)
  Spawn("yield", 6, 13)
end

tiles = "../TheIcePalace/tiles/hanok"
pattern = "../TheIcePalace/backgrounds/korean"
dark = { 0.07, 0.07, 0.20 }
light = { 0.16, 0.16, 0.33 }
