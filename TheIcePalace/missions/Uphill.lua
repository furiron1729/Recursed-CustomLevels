-- Authors
--   Crystal level design : QueuED
--   Diamond level design : choongmyoung
--   Tile placement       : QueuED

local spring = { ["<"]="grass_l", ["="]="grass", [">"]="grass_r",
                 ["{"]="dirt_l", ["o"]="dirt", ["}"]="dirt_r",
                 ["1"]="depth_ul", ["2"]="depth_u", ["3"]="depth_ur",
                 ["4"]="depth_l", ["5"]="depth", ["6"]="depth_r",
                 ["/"]="lantern_ul", ["\\"]="lantern_ur", ["("]="lantern_dl",
                 [")"]="lantern_dr", ["["]="pillar_l1", ["]"]="pillar_r1",
                 [":"]="pillar_l2", [";"]="pillar_r2" }
local tree = { ["("]="trunk_l1", [")"]="trunk_r1", ["["]="trunk_l2", ["]"]="trunk_r2",
               ["l"]="trunk_branch_l", ["r"]="trunk_branch_r",
               ["-"]="branch_h", ["T"]="branch_t", ["L"]="branch_l",
               ["!"]="root_l1", ["?"]="root_l2", ["#"]="root_r1", ["$"]="root_r2",
               ["/"]="leaf_ul", ["^"]="leaf_u", ["\\"]="leaf_ur",
               ["<"]="leaf_l", ["o"]="leaf_c", [">"]="leaf_r",
               ["{"]="leaf_dl", ["_"]="leaf_d", ["}"]="leaf_dr",
               ["*"]="leaf_deco", ["y"]="leaf_branch_lu", ["+"]="leaf_branch_d",
               [":"]="leaf_branch_ld", [";"]="leaf_branch_rd",
               ["q"]="leaf_corner_dl", ["p"]="leaf_corner_dr",
               ["u"]="leaf_trunk_l", ["v"]="leaf_trunk_r" }

local water = { ["^"]="water_s", ["w"]="water", ["{"]="dirt_w_s",
                ["1"]="buoy_ul", ["2"]="buoy_u", ["3"]="buoy_ur",
                ["4"]="buoy_l", ["5"]="buoy", ["6"]="buoy_r" }
local spring_wet = { ["<"]="grass_l_w", ["="]="grass", [">"]="grass_r_w",
                     ["{"]="dirt_l_w", ["o"]="dirt", ["}"]="dirt_r_w",
                     ["1"]="depth_ul", ["2"]="depth_u", ["3"]="depth_ur",
                     ["4"]="depth_l", ["5"]="depth", ["6"]="depth_r",
                     ["/"]="lantern_ul_w", ["\\"]="lantern_ur_w", ["("]="lantern_dl_w",
                     [")"]="lantern_dr_w", ["["]="pillar_l1_w", ["]"]="pillar_r1_w",
                     [":"]="pillar_l2_w", [";"]="pillar_r2_w" }
local tree_wet = { ["("]="trunk_l1_w", [")"]="trunk_r1_w", ["["]="trunk_l2_w", ["]"]="trunk_r2_w",
                   ["l"]="trunk_branch_l", ["r"]="trunk_branch_r",
                   ["-"]="branch_h_w", ["T"]="branch_t_w", ["L"]="branch_l_w",
                   ["!"]="root_l1_w", ["?"]="root_l2_w", ["#"]="root_r1_w", ["$"]="root_r2_w",
                   ["/"]="leaf_ul_w", ["^"]="leaf_u_w", ["\\"]="leaf_ur_w",
                   ["<"]="leaf_l_w", ["o"]="leaf_c", [">"]="leaf_r_w",
                   ["{"]="leaf_dl_w", ["_"]="leaf_d_w", ["}"]="leaf_dr_w",
                   ["*"]="leaf_deco", ["y"]="leaf_branch_lu_w", ["+"]="leaf_branch_d_w",
                   [":"]="leaf_branch_ld_w", [";"]="leaf_branch_rd_w",
                   ["q"]="leaf_corner_dl", ["p"]="leaf_corner_dr",
                   ["u"]="leaf_trunk_l", ["v"]="leaf_trunk_r" }

local black = { ["o"]="black", ["x"]="black_hole", ["#"]="black_grid", ["$"]="black_grid_wet",
                ["\\"]="black_l", ["/"]="black_r", ["-"]="ledge_x", }


function start(wet)
  if wet then
    ApplyTiles(spring_wet, 0, 0, [[
>...................
}...................
=>..../\............
o}....()............
o}....[]............
o}....:;............
o}....[]............
o======>............
ooooooo}............
222223o}............
555556o}............
555556o}............
555556o}............
555556o}...<========
555556o}...{oooooooo
]])
    ApplyTiles(tree_wet, 0, 0, [[
...........{q*op+_q*
............{__;T-:u
................./\[
.................{;(
...................l
...................(
...................[
...................(
...................[
...................(
...................[
...................(
...................l
]])
  ApplyTiles(water, 0, 0, [[
.wwwwwww456.........
.wwwwwww456w........
..wwww..456wwwwww...
..wwww..456wwwwww...
..wwww..456wwwwwwww.
..wwww..456wwwwwwww.
..wwww..456wwwwwwww.
........456wwwwwwww.
........456wwwwwwww.
........456wwwwwwww.
........456wwwwwwww.
........456wwwwwwww.
........456wwwwww...
........456.........
........456.........
]])
  ApplyTiles(tree_wet, 17, 12, [[
!?
]])
  else
    ApplyTiles(spring, 0, 0, [[
>...................
}...................
=>..../\............
o}....()............
o}....[]............
o}....:;............
o}....[]............
o======>............
ooooooo}............
222223o}............
555556o}............
555556o}............
555556o}............
555556o}...<========
555556o}...{oooooooo
]])
    ApplyTiles(tree, 0, 0, [[
...........{q*op+_q*
............{__;T-:u
................./\[
.................{;(
...................l
...................(
...................[
...................(
...................[
...................(
...................[
...................(
.................!?l
]])
    ApplyTiles(water, 8, 12, [[
123
456
456
]])
  end

  Spawn("player", 5.5, 6)
  Spawn("yield", 15.75, 12)
  Global("chest", 13.25, 12.5, "pool")
  Spawn("crystal", 15.25, 3.75)
end

function pool(wet)
  if wet then
    ApplyTiles(spring_wet, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
..../\......<=>....<
....()......{o=>...{
....[]......{oo}...{
....:;......{ooo===o
....[]......{o122222
=========>..{o455555
222222223}..{o455555
]])
    ApplyTiles(tree_wet, 0, 0, [[
oooo*oop}.....{_++q*
o**oooo>........LT:u
v_+qo*p}...........[
r-T:__}............(
]./^^\.............[
r-:q*>.............(
]..{_}.............[
)..................(
]...................
)...................
]...................
)...................
r...................
]])
    ApplyTiles(water, 0, 0, [[
.........w46ww......
........ww46wwww....
........ww46wwwwwww.
.......www46wwwwwww.
.w....wwww46wwwwwww.
......wwww46wwwwwww.
.ww...wwww46wwwwwww.
.wwwwwwwww46wwwwwww.
.www..wwww46...wwww.
.www..wwww46....www.
.www..wwww46....www.
.www..wwww46........
...w..wwww46........
..........46........
..........46........
]])
    ApplyTiles(tree_wet, 1, 12, [[
#$
]])
  else
    ApplyTiles(spring, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
..../\......<=>....<
....()......{o=>...{
....[]......{oo}...{
....:;......{ooo===o
....[]......{o122222
=========>..{o455555
222222223}..{o455555
]])
    ApplyTiles(tree, 0, 0, [[
oooo*oop}.....{_++q*
o**oooo>........LT:u
v_+qo*p}...........[
r-T:__}............(
]./^^\.............[
r-:q*>.............(
]..{_}.............[
)..................(
]...................
)...................
]...................
)...................
r#$.................
]])
    ApplyTiles(water, 10, 9, [[
......^^^{
13....www.
46........
46........
46........
46........
]])
    ApplyTiles(spring_wet, 15, 9, [[
>....
}...{
]])
  end

  Spawn("player", 13, 7)
  Spawn("chest", 6.5, 12.5, "start")
end

function reject()
  ApplyTiles(black, 0, 0, [[
o.............oooooo
o.............oooooo
o.............oooooo
o.............ooxxoo
o..oooooooo---oooooo
o..oxxooxxo...oooooo
o..oooooooo###oooooo
o..................o
o..................o
o..................o
o...........oo#####o
o..........ooooooooo
o.........oo/\o/\o/o
o........ooo..o..o.o
oooooooooooooooooooo
]])

  Spawn("player", 4.25, 13)
  Spawn("key", 12.5, 5.5)
  Spawn("chest", 7, 13.5, "fan")
  Spawn("lock", 15.5, 8.5)
  Spawn("diamond", 17.5, 8.5)
end

function fan(wet)
  if wet then
    ApplyTiles(water, 0, 9, [[
.^^^^^^^^^^^^^^^^^^.
.wwwwwwwwwwwwwwwwww.
.wwwwwwwwwwwwwwwwww.
...wwwwwwwwwwwwww...
.....wwwwwwwwww.....
]])
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
ooooo/........\ooooo
ooo/............\ooo
o/................\o
o..................o
o..................o
o##################o
o/................\o
o..................o
o..................o
o..................o
o..................o
ooo..............ooo
ooooo..........ooooo
ooooo$$$$$$$$$$ooooo
]])
  else
  ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
ooooo/........\ooooo
ooo/............\ooo
o/................\o
o..................o
o..................o
o##################o
o/................\o
o..................o
o..................o
o..................o
o..................o
ooo..............ooo
ooooo..........ooooo
ooooo##########ooooo
]])
  end
  Spawn("player", 2, 11)
  Spawn("fan", 10, 13.5)
  Spawn("fan", 15, 12.25)
  Spawn("fan", 6.2, 5.5)
  Spawn("fan", 7.8, 5.5)
  Spawn("fan", 10.7, 5.5)
  Spawn("fan", 14.5, 5.5)
  Spawn("fan", 15.5, 5.5)
end

tiles = "../TheIcePalace/tiles/spring"
pattern = "../TheIcePalace/backgrounds/nature"
dark = { 0.68, 0.45, 0.58 }
light = { 0.78, 0.55, 0.71 }

