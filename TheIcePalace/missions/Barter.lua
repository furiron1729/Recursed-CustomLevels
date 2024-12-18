-- Created with RecursedEditor
--
-- Authors
--   Crystal level design : choongmyoung
--   Tile placement       : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
56.......#........45
56................45
56................45
56...#............45
56.......#........45
56................45
56................45
56...#............45
56................45
56d...............45
56................45
56d....3KKK7......45
56......456.......45
56######456.......45
55555555555555555555
]])
  Spawn("player", 9.5, 10)
  Spawn("generic", 5, 12.5)
  Spawn("chest", 13, 13.5, "roomA")
  Spawn("chest", 16, 13.5, "roomB")
  Spawn("crystal", 14.75, 2.25)
  Spawn("lock", 5.5, 5.5)
  Spawn("lock", 9.5, 2.5)
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAA4556AAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56s9abwAAAAAAs9abw45
556tuvAAnKKrAAtuv455
556tuv########tuv455
556tuv45555556tuv455
556tuv45555556tuv455
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
56................45
56................45
56................45
56................45
56................45
56................45
56......4556......45
56................45
56................45
5689abc......89abc45
556tuv..3KK7..tuv455
556tuv########tuv455
556tuv45555556tuv455
556tuv45555556tuv455
]])
  end
  Spawn("player", 4.5, 9)
  Spawn("yield", 15.5, 9)
  Spawn("lock", 8.5, 9.5)
  Spawn("key", 11.5, 10.5)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
56AAAAAAAAAAAnpKKr45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAAAAAA45
56AAAAAAAAAAAs9abw45
56AAAAAAAAAAAAtuvA45
56AAAAAAAAAAAAtuvA45
KKKKKKKrAAAAAAtuvA45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
55555555555556tuv455
55555555555556tuv455
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
55555555555555555555
56...........3pKK745
56................45
56................45
56................45
56...........89abc45
56............tuv.45
56............tuv.45
KKKKKKKrzzzzzztuvz45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
5555556AAAAAAAtuvA45
55555555555556tuv455
55555555555556tuv455
]])
  end
  Spawn("player", 4.5, 7)
  Spawn("lock", 14.5, 3.5)
  Spawn("box", 16.5, 4.5)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.~;+U//-/:~-...+..g.
--g-~/g&.~..g/.&:.U.
;//Ag.;-./.~..A.gV/:
/-.V.gg.V+--V:./....
-g../.-.g&g~U..~&g;/
gg.&-....A&.&-&..~..
..:/:/Ag/..~&;-g+/;/
&A~g.~-g.......;;-.g
:.*:V:;+&.....~&.A;-
&;/Ag*U:g...../.;-..
+.U-.-..-.....***//g
//.&/;g/.-/-.-g&gAV;
.+/V*.g.+A.g&..;U&./
.g:.-.~U~.;:..~+-...
/-g;&&*Ag..&~Vg~+/..
]])
  Spawn("player", 11.5, 10)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
