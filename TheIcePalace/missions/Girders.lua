local gear = { ["-"] = "pipeh", ["|"] = "pipev",
               ["}"] = "pipedr", ["{"] = "pipedl", [">"] = "pipeur", ["<"] = "pipeul",
               ["7"] = "mesh_ul", ["8"] = "mesh_u", ["9"] = "mesh_ur",
               ["4"] = "mesh_l",  ["5"] = "mesh", ["6"] = "mesh_r",
               ["1"] = "mesh_dl", ["2"] = "mesh_d", ["3"] = "mesh_dr",
               ["@"] = "clockwise", ["?"] = "widdershins",
               ["="] = "girder", o = "box", ["~"] = "ledge" }

local paradox = { o = "glitch", x = "glitchhole", ["~"] = "glitchledge" }

function start(wet)
  ApplyTiles(gear, 0, 0, [[
......}-------<.>-{.
......|...........|.
......|...........|.
......|...........|.
......|...........|.
......|...........|.
.}----o====7889...|.
.|.........4556...|.
.|.........4556...|.
.|.........1223...|.
.|78889...........|.
.|45556...........|.
.|12223...........|.
.>----{~~79~~~~~~~|.
......|..46.......|.
]])
  Spawn("player", 8, 5)
  Spawn("chest", 12, 5.5, "girders")
  Spawn("record", 15.5, -4, "sounds/voices/t6")
  Global("box", 15, 5.5)
  Spawn("key", 15.5, 4.5)
  Spawn("lock", 5.5, 8.5)
  Spawn("crystal", 3.5, 8.5)
  Spawn("lock", 15.5, -1.5)
end

function girders(wet)
ApplyTiles(gear, 0, 0, [[
....46....46.......|
....46....13----o..|
....46.............|
....46.............|
....46............~|
....46~~~~79.......|
....46....46.......|
....46....46----o..|
....46~...46.......|
....13....13.......>
..................~~
.79....79....79.....
.46....46....46.....
.46....46....46.....
-46~79~46~79~46-----
]])
  Spawn("player", 13, 0) 
  Spawn("yield", 13, 6)
  Spawn("lock", 11, 3.5)
  Global("generic", 0.5, 13.5)
end

function reject(wet)
ApplyTiles(paradox, 0, 0, [[
o...ooo............o
o...ooo............o
o...oxo............o
o...ooo............o
o...ooo......ooo...o
o...oxo......oxo...o
o...ooo......ooo...o
o..........~~ooooooo
o..................o
o..................o
ooooooooo..........o
oooxoooxoooooooooooo
ooooooooooooxoooxooo
oxoooxoooooooooooooo
ooooooooooxoooxoooxo
]])
  Spawn("player", 8, 9)
  Spawn("key", 14.5, 3.5)
  Spawn("lock", 14.5, 9.5)
  Spawn("lock", 6.5, 8.5)
  Spawn("lock", 4.5, 8.5)
  Spawn("key", 16, 10.5)
  Spawn("chest", 18, 10.5, "start")
  Spawn("diamond", 2.5, 4.5)
  Global("generic", 17.5, 6.5)
end

function glitch(wet)
ApplyTiles(paradox, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
....................
....................
....................
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("player", 10, 8)
end

tiles = "tiles/clockwork"
pattern = "backgrounds/library"
dark = {start = {0.04, 0.03, 0.31}}
light = {start = {0.11, 0.26, 0.64}}