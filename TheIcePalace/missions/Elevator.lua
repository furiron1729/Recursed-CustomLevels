-- Authors
--   Crystal level design : Eucleides
--   Diamond level design : Eucleides
--   Tile placement       : Eucleides

local modern = {["."]="empty", ["4"]="glass_vu", ["5"]="glass_v", ["6"]="glass_vd",
              ["T"]="pillar_u", ["I"]="pillar", ["="]="floor",
              ["+"]="light", ["/"]="light_stand", ["x"]="light_water", ["%"]="light_stand_water",
              ["A"]="buoy_u", ["E"]="buoy_d", ["H"]="buoy_v", ["1"]="buoy_1", ["2"]="buoy_2",
              ["M"]="fountain", ["i"]="fountain_surface", ["|"]="fountain_down", ["!"]="fountain_vertical", ["V"]="fountain_water",
              ["l"]="stair_l", ["r"]="stair_r", ["L"]="stair_l_water", ["R"]="stair_r_water",
              ["w"]="water", ["^"]="water_s"}

local glitch = {["o"]="black", ["{"]="black_r", ["}"]="black_l", ["-"]="black_ledge", ["O"]="black_hole", ["g"]="black_grid",
                ["v"]="acid", ["~"]="acid_s", ["Q"]="black_hole_acid", [">"]="black_r_acid", ["<"]="black_l_acid"}

function start(wet)
  if wet then
    ApplyTiles(modern, 0, 0, [[
.......5........I..l
+......5........I.lr
/......6........Ilr.
==^^====^^^^^^^^=====
w4wwx%%xwwwwwwwLRx%4
w5wwwxxwwwwwwwLRwwx5
w5AAAAwwwwwwwLRwwww5
w52wwwwwwwwwLRwwVww5
w6HwwwwwwwwLRwww|ww6
==EEEE=======wwV|ww=
Twwwwwwwwwwwwww||VwT
Iwwwwwwwwwwwwww|||wI
IwwwwwwwwwwwwTw|||wI
IwTxxTwwwwwwwIw|||wI
====================
]])
    Spawn("box", 3, 5)
    Spawn("player", 4.5, 8)

  else
    ApplyTiles(modern, 0, 0, [[
.......5........I..l
+......5........I.lr
/......6........Ilr.
==..====........====
.4..+//+.......lr+/4
.5...++.......lr..+5
.5...........lr....5
.5..........lr..M..5
.6.........lr...!..6
==AAAA=======..M!..=
T.1............!!M.T
I.H............!!!.I
I.EEEE.......T^iii^I
I.T++T.......Iw|||wI
====================
]])
    Spawn("box", 3, 8)
    Spawn("player", 4.5, 11)
  end

  Spawn("crystal", 5.5, 1.5)
  Spawn("yield", 8.5, 8)
  Global("chest", 8.5, 13, "start")
end


function reject()
  ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
ooooooooooo......{oo
ooooooooooo.......oo
ooooooooooo.......oo
oooooooooooooooo..oo
oooooooooooooooo..oo
oo}...............oo
oo................oo
oo............o---oo
oo............o...oo
oo............o...oo
ooooooooo-----o---oo
ooooooooo.....o...oo
ooooooooo.....o...oo
oooooooooooooooooooo

]])

  Spawn("player", 16.5, 13)
  Spawn("chest", 4, 10, "roomA")
  Spawn("chest", 7, 10, "roomB")
  Spawn("diamond", 12.5, 2.5)
end


function roomA(wet)
  if wet then
    ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oo}..............{oo
oo................oo
oo................oo
oo~~~ooo....ooo~~~oo
oovvvv>o....o<vvvvoo
oovvvvvo....ovvvvvoo
oovvvvvo....ovvvvvoo
ooQQQvvo....ovvQQQoo
ooooovvoooooovvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
oooooooooooooooooooo
]])

  else
    ApplyTiles(glitch, 0, 0, [[
oooooooooooooooooooo
oo}..............{oo
oo................oo
oo................oo
oo...ooo....ooo...oo
oo....{o....o}....oo
oo.....o....o.....oo
oo.....o....o.....oo
ooOOO..o....o..OOOoo
ooooo..oooooo..ooooo
ooooo..........ooooo
ooooo~~~~~~~~~~ooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
oooooooooooooooooooo
]])
  end

  Spawn("yield", 12.5, 13)
  Spawn("box", 10, 8)
  Spawn("player", 7.5, 13)

end

function roomB(wet)
  if wet then
    ApplyTiles(glitch, 0, 0, [[
ooooooooOOOOoooooooo
oo}..............{oo
oo................oo
oo................oo
oo~~~ooo....ooo~~~oo
oovvvv>o....o<vvvvoo
oovvvvvo....ovvvvvoo
oovvvvvo....ovvvvvoo
ooooovvo....ovvooooo
ooooovvoooooovvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
ooooovvvvvvvvvvooooo
ooooooooQQQQoooooooo
]])

  else
    ApplyTiles(glitch, 0, 0, [[
ooooooooOOOOoooooooo
oo}..............{oo
oo................oo
oo................oo
oo...ooo....ooo...oo
oo....{o....o}....oo
oo.....o....o.....oo
oo.....o....o.....oo
ooooo..o....o..ooooo
ooooo..oooooo..ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooo..........ooooo
ooooooooOOOOoooooooo
]])
  end

  Spawn("yield", 7.5, 13)
  Global("fan", 10, 8)
  Spawn("player", 12.5, 13)

end



tiles = "../TheIcePalace/tiles/modern"
pattern = "../TheIcePalace/backgrounds/arrows"
dark = {0.20, 0.14, 0.06}
light = {0.14, 0.10, 0.09}
