-- Created with RecursedEditor
--
-- Authors
--   Crystal level design     : QueuED
--   Diamond level design     : choongmyoung
--   Tile placement (crystal) : QueuED
--   Tile placement (diamond) : choongmyoung

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
5555555555I........I
KpKKpKKpKKI........I
abc.......I........I
uv........I........I
uv........I........I
uv........#........I
uv.................I
uv.................I
uv.................I
5555555555556zzzzzzI
5555555555556AAAAAAI
55555555556AAAAAAAAI
ppppppppppqAAAAAAAAI
AAAAAAAAAAAA########
55555555555555555555
]])
  Spawn("player", 7.25, 8)
  Spawn("chest", 16.75, 12.5, "sunken")
  Spawn("chest", 3.75, 8.5, "items")
  Spawn("lock", 10.5, 7.5)
end

function sunken(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
55556KKpKKpKKpKKpKK4
KKKK7.......02AAAAA4
6...........kmAAAAA4
6...........kmAAAAA4
6zzzzzzzzz##km###AA4
6AAAAAAAAAIIkm456AA4
6##AAAAAAAIIkm456AA4
6##AAAAAAAIIkm456AA4
555555555556km456AA4
555555555556km456AA4
KKKKKKKKKKKrEGopqAA4
6AAAAAAAAAAAAAAAAAA4
6AAAAAAAAAAAAAAAAAA4
6AAAAAAAAAAAAAAAAAA4
55555555555555555555
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
55556KKpKKpKKpKKpKK4
KKKK7..............4
6..................4
6..................4
6.........##02###..4
6.........IIkm456..4
6##.......IIkm456..4
6##.......IIkm456..4
555555555556km456..4
555555555556km456..4
KKKKKKKKKKK7kmopq..4
6...........km.....4
6...........km.....4
6...........EG.....4
55555555555555555555
]])
  end
  Spawn("player", 6.5, 7)
  Global("chest", 15.5, 3.5, "sunken")
  Spawn("crystal", 3, 12.5)
  Spawn("lock", 5.5, 12.5)
end

function items(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
#KKKKKpppKKKKKKKKKK#
6AAAAA012AAAAAAAAAA4
6AAAAAklmAAAAAAAAAA4
6AAAAAklmAAAAAAAAAA4
6AAAAAklmAAAAAAAAAA4
6AAAAAklmAAAAAAAAAA4
6AAAAAklmAAAAs9aabw4
6AAAAAklmAAAAAtuuvA4
6AAAAAklmAAAAAtuuvA4
6AAAAAklmAAAAAtuuvA4
6AAAAAklms9abwtuuvA4
6AAAAAklmAtuvAtuuvA4
6s9abwklmAtuvAtuuvA4
6AtuvAklmAtuvAtuuvA4
6AtuvAklmAtuvAtuuvA4
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
#KKKKKpppKKKKKKKKKK#
6..................4
6..................4
6..................4
6..................4
6..................4
6............89aabc4
6.............tuuv.4
6.............tuuv.4
6.............tuuv.4
6........89abctuuv.4
6.....012.tuv.tuuv.4
689abcklm.tuv.tuuv.4
6.tuv.klm.tuv.tuuv.4
6.tuv.klm.tuv.tuuv.4
]])
  end
  Spawn("player", 11.5, 9)
  Spawn("box", 16, 5.5)
  Spawn("key", 3.5, 11.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
ggggggggggggggghhhgg
gggggggggggg.......g
gggggggi...........g
ggggggg............g
ggi............hhhgg
gg...............fgg
gg................gg
gg....g...........gg
gg....g...........gg
ggeeeeg...........gg
gg....g...........gg
gg....ggggg.......gg
gghhhhggggg.......gg
ggi..fggggghhhhhhhgg
gg....gggggi.....fgg
]])
  Spawn("chest", 9, 10.5, "rejectB")
  Spawn("player", 4, 11)
  Global("chest", 17.5, 3.5, "rejectB")
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggggggggg.......fggg
ggi.fgggg........ggg
gg...gggg........ggg
gghhhgggg........ggg
ggggggggg........ggg
g....gggg.gggggggggg
g....gggg........fgg
g.................gg
g.................gg
g.................gg
gggggggggggggg....gg
gggggggggggggg....gg
gghhhggggggggg....gg
gggggggggggggggggggg
]])
  Spawn("player", 16, 13)
  Spawn("lock", 7.75, 9.5)
  Spawn("lock", 6.25, 9.5)
  Spawn("diamond", 3, 7.5)
  Spawn("fan", 12, 10.5)
  Spawn("key", 12, 5.5)
end

tiles = "../TheIcePalace/tiles/glacier_v2"
pattern = "../TheIcePalace/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
