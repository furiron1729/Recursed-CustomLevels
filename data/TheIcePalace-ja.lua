-- communityDLC Screen

function start()
  local x = 0.86602540378;
  Add(7 - 0.2, 7.5 - 6 * x, Peg.Level, 0, "../TheIcePalace/missions/Easy_Mode", "イージーモード (Easy Mode)")
  Add(10 - 0.2, 7.5 - 6 * x, Peg.Level, 1, "../TheIcePalace/missions/Manhole", "マンホール (Manhole)")
  Add(13 - 0.2, 7.5 - 6 * x, Peg.Level, 1, "../TheIcePalace/missions/Cliff", "がけ (Cliff)")
  Add(14.5 - 0.1, 7.5 - 3 * x, Peg.Level, 2, "../TheIcePalace/missions/Side_Effect", "＂》ﾜ (Side Effect)")
  Add(16, 7.5, Peg.Level, 3, "../TheIcePalace/missions/Sack", "ずた㌰ (Sack)")
  Add(14.5 + 0.1, 7.5 + 3 * x, Peg.Level, 4, "../TheIcePalace/missions/Deficient", "㍇りない (Deficient)")
  Add(13 + 0.2, 7.5 + 6 * x, Peg.Level, 5, "../TheIcePalace/missions/Sunken", "ｿﾀ (Sunken)")
  Add(10 + 0.2, 7.5 + 6 * x, Peg.Level, 5, "../TheIcePalace/missions/Rabbit_Hole", "Ｚなしﾁ (Rabbit Hole)")
  Add(7 + 0.2, 7.5 + 6 * x, Peg.Level, 6, "../TheIcePalace/missions/Cell", "Ｎ㍘Ｑ (Cell)")
  Add(5.5 + 0.1, 7.5 + 3 * x, Peg.Level, 7, "../TheIcePalace/missions/Barter", "〄ｗ (Barter)")
  Add(4, 7.5, Peg.Level, 8, "../TheIcePalace/missions/High_Tide", "ﾍﾑ (High Tide)")
  Add(5.5 - 0.1, 7.5 - 3 * x, Peg.Level, 9, "../TheIcePalace/missions/Switch", "スイッチ (Switch)")
  Add(8.5 - 0.1, 7.5 - 3 * x, Peg.Level, 9, "../TheIcePalace/missions/Mutual", "〓㍑ (Mutual)")
  Add(11.5 - 0.1, 7.5 - 3 * x, Peg.Level, 10, "../TheIcePalace/missions/Toss", "トス (Toss)")
  Add(13, 7.5, Peg.Level, 11, "../TheIcePalace/missions/Cupboard", "ｋｭ (Cupboard)")
  Add(11.5 + 0.1, 7.5 + 3 * x, Peg.Level, 12, "../TheIcePalace/missions/Share", "シェア (Share)")
  Add(8.5 + 0.1, 7.5 + 3 * x, Peg.Level, 12, "../TheIcePalace/missions/Borrow", "『りる (Borrow)")
  Add(7, 7.5, Peg.Level, 13, "../TheIcePalace/missions/Low_Tide", "Ｖﾑ (Low Tide)")
  Add(10, 7.5, Peg.Page, 14, "outdoor", "＞〖する (A Day Out)")
  Add(2, 7.5 - 6 * x, Peg.Back)
  
  return { bg = { 0.15, 0.05, 0.35 } }
end

function outdoor()
  local x = 0.86602540378;
  Add(10, 7.5, Peg.Back)

  Add(8.5 - 0.1, 7.5 - 3 * x, Peg.Level, 14, "../TheIcePalace/missions/Uphill", "ゑり６ (Uphill)")
  Add(11.5 - 0.1, 7.5 - 3 * x, Peg.Level, 14, "../TheIcePalace/missions/Treasure", "Ｊﾕ (Treasure)")
  Add(13, 7.5, Peg.Level, 14, "../TheIcePalace/missions/Alley", "㍉５ (Alley)")
  Add(11.5 + 0.1, 7.5 + 3 * x, Peg.Level, 14, "../TheIcePalace/missions/Downhill", "ヮり６ (Downhill)")
  Add(8.5 + 0.1, 7.5 + 3 * x, Peg.Level, 14, "../TheIcePalace/missions/Elevator", "エレベーター (Elevator)")
  Add(7, 7.5, Peg.Level, 14, "../TheIcePalace/missions/Well", "〃ｋ (Well)")

  Add(10, 7.5 - 6 * x, Peg.Level, 20, "../TheIcePalace/missions/Linger", "ｷﾟ (Linger)")
  Add(14.5, 7.5 - 3 * x + 0.1, Peg.Level, 20, "../TheIcePalace/missions/Imprisoned", "】ﾔ (Imprisoned)")
  Add(14.5, 7.5 + 3 * x + 0.1, Peg.Level, 20, "../TheIcePalace/missions/Girders", "＠はり (Girders)")
  Add(10, 7.5 + 6 * x, Peg.Level, 20, "../TheIcePalace/missions/Return", "リターン (Return)")
  Add(5.5, 7.5 + 3 * x - 0.1, Peg.Level, 20, "../TheIcePalace/missions/Escape", "㌥〖 (Escape)")
  Add(5.5, 7.5 - 3 * x - 0.1, Peg.Level, 20, "../TheIcePalace/missions/Retrieval", "リトリーバル (Retrieval)")

  return { bg = { 0.12, 0.24, 0.06 } }
end
