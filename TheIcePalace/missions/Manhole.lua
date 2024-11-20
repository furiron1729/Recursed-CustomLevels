-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : QueuED
--   Tile placement       : QueuED

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="block_circle", ["J"]="block", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="line_v", ["O"]="line_h", ["P"]="pillar_bridge", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="buoy_s", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
JJJJJJJJJJJJJ....JJJ
JJJJJJJ555556....455
JJJJJ55555556....455
JJ55555555556....455
J555555555556....455
5555555555556....455
5555555555556....455
555556..%$........N.
555556..=.........N.
555556............N.
.N................N.
.N........4555555555
.N........45555555JJ
.N.......^4555555JJJ
55555555555555JJJJJJ
]])
  Spawn("player", 16, 10)
  Spawn("chest", 4, 13.5, "lock")
  Spawn("key", 12.75, 10.5)
end

function lock(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
555555555556....4555
555555555556....4555
pppppppp5556....4555
.N.....45556....4555
.N.....45556....4555
zNz011245556zzzz4555
JJJEFFG45556AAAA4555
556AAAA45556AAAAAAAN
556AAAAAAAAAAAAAAAAN
556AAAAAAAAAAAAAAAAN
556AAAAAAAAAAAAAAAAN
556AAAAJJJJJ55555555
556AAAA4555555555555
55JJJJJJ555555555555
55555555555555555555
]])
    Spawn("chest", 5, 4.5, "pool")
  else
    ApplyTiles(tile_mapping, 0, 0, [[
555555555556....4555
555555555556....4555
pppppppp5556....4555
.N.....45556....4555
.N.....45556....4555
.N.....45556....4555
JJJ....45556....4555
556....45556.......N
556................N
556................N
556................N
5560112JJJJJ55555555
556EFFG4555555555555
55JJJJJJ555555555555
55555555555555555555
]])
    Spawn("chest", 5, 10.5, "pool")
  end
  Spawn("lock", 9.5, 9.5)
  Spawn("player", 18, 10)
end

function pool(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppp45555555
N...........oppppppp
N.................N.
N.................N.
JJJzzzzzzzzzzzzzzzNz
556AAAAAAAJJJJJJJJJJ
556AAAAAAA4555555555
556AAAAAAA4555555555
556AAAAAAA4555555555
556JJAAAAAAAJAAAAJAA
ANAAAAAAAAAAAAAAANAA
ANAAAAAAAAAAAAAAANAA
ANAAAAAAAAAAAAAAANAA
55555555555555555555
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppp45555555
N...........oppppppp
N.................N.
N.................N.
JJJ...............N.
556.......JJJJJJJJJJ
556.......4555555555
556.......4555555555
556.......4555555555
............J....J..
zNzzzzzzzzzzzzzzzNzz
ANAAAAAAAAAAAAAAANAA
ANAAAAAAAAAAAAAAANAA
55555555555555555555
55555555555555555555
]])
    -- overhang
    ApplyTiles(tile_mapping, 0, 9, [[
556JJ...............
]])
  end
  Spawn("lock", 12.5, 11.5)
  Spawn("player", 16, 4)
  Spawn("chest", 15, 12.5, "crystal")
  Spawn("key", 4, 8.5)
end

function crystal(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
6.................45
6.................45
6.................45
6..............01245
6zzzzzzzzzzzzzzEFG45
55556AAAAAAAAAAAAA45
55556AAAAAAAAAAAAA45
55556AAAAAAAAAAAAA45
55556AAAAAAAAAJAAA45
55556AAAAAAAAANAAA45
55556OO45555556AAA45
55556AA45555556AAA45
55556AA45555556AAA45
AJAAJAA45555556AAA45
ANAANAA45555556JJJJJ
]])
    Spawn("box", 16.5, 2.5)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
6.................45
6.................45
6.................45
6.................45
6.................45
55556.............45
55556.............45
55556.............45
55556.........J...45
55556.........N...45
55556OO45555556...45
55556..45555556...45
55556..4555555601245
.J..J..45555556EFG45
zNzzNzz45555556JJJJJ
]])
    Spawn("box", 16.5, 11.5)
  end
  Spawn("player", 6, 9)
  Spawn("crystal", 3, 1)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"

dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
