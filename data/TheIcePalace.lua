-- communityDLC Screen

function start()
  local x = 0.86602540378;
  Add(7 - 0.2, 7.5 - 6 * x, Peg.Level, 0, "../TheIcePalace/missions/Easy_Mode", "Easy Mode")
  Add(10 - 0.2, 7.5 - 6 * x, Peg.Level, 1, "../TheIcePalace/missions/Manhole", "Manhole")
  Add(13 - 0.2, 7.5 - 6 * x, Peg.Level, 1, "../TheIcePalace/missions/Cliff", "Cliff")
  Add(14.5 - 0.1, 7.5 - 3 * x, Peg.Level, 2, "../TheIcePalace/missions/Side_Effect", "Side Effect")
  Add(16, 7.5, Peg.Level, 3, "../TheIcePalace/missions/Sack", "Sack")
  Add(14.5 + 0.1, 7.5 + 3 * x, Peg.Level, 4, "../TheIcePalace/missions/Deficient", "Deficient")
  Add(13 + 0.2, 7.5 + 6 * x, Peg.Level, 5, "../TheIcePalace/missions/Sunken", "Sunken")
  Add(10 + 0.2, 7.5 + 6 * x, Peg.Level, 5, "../TheIcePalace/missions/Rabbit_Hole", "Rabbit Hole")
  Add(7 + 0.2, 7.5 + 6 * x, Peg.Level, 6, "../TheIcePalace/missions/Cell", "Cell")
  Add(5.5 + 0.1, 7.5 + 3 * x, Peg.Level, 7, "../TheIcePalace/missions/Barter", "Barter")
  Add(4, 7.5, Peg.Level, 8, "../TheIcePalace/missions/High_Tide", "High Tide")
  Add(5.5 - 0.1, 7.5 - 3 * x, Peg.Level, 9, "../TheIcePalace/missions/Switch", "Switch")
  Add(8.5 - 0.1, 7.5 - 3 * x, Peg.Level, 9, "../TheIcePalace/missions/Mutual", "Mutual")
  Add(11.5 - 0.1, 7.5 - 3 * x, Peg.Level, 10, "../TheIcePalace/missions/Toss", "Toss")
  Add(13, 7.5, Peg.Level, 11, "../TheIcePalace/missions/Cupboard", "Cupboard")
  Add(11.5 + 0.1, 7.5 + 3 * x, Peg.Level, 12, "../TheIcePalace/missions/Share", "Share")
  Add(8.5 + 0.1, 7.5 + 3 * x, Peg.Level, 12, "../TheIcePalace/missions/Borrow", "Borrow")
  Add(7, 7.5, Peg.Level, 13, "../TheIcePalace/missions/Low_Tide", "Low Tide")
  Add(10, 7.5, Peg.Page, 14, "outdoor", "A Day Out")
  Add(2, 7.5 - 6 * x, Peg.Back)
  
  return { bg = { 0.15, 0.05, 0.35 } }
end

function outdoor()
  local x = 0.86602540378;
  Add(10, 7.5, Peg.Back)
  
  Add(8.5 - 0.1, 7.5 - 3 * x, Peg.Level, 15, "../TheIcePalace/missions/Uphill", "Uphill")
  Add(11.5 - 0.1, 7.5 - 3 * x, Peg.Level, 15, "../TheIcePalace/missions/Treasure", "Treasure")
  Add(13, 7.5, Peg.Level, 15, "../TheIcePalace/missions/Alley", "Alley")
  Add(11.5 + 0.1, 7.5 + 3 * x, Peg.Level, 15, "../TheIcePalace/missions/Downhill", "Downhill")
  Add(8.5 + 0.1, 7.5 + 3 * x, Peg.Level, 15, "../TheIcePalace/missions/Elevator", "Elevator")
  Add(7, 7.5, Peg.Level, 15, "../TheIcePalace/missions/Well", "Well")

  Add(10, 7.5 - 6 * x, Peg.Level, 20, "../TheIcePalace/missions/Linger", "Linger")
  Add(14.5, 7.5 - 3 * x + 0.1, Peg.Level, 20, "../TheIcePalace/missions/Imprisoned", "Imprisoned")
  Add(14.5, 7.5 + 3 * x + 0.1, Peg.Level, 20, "../TheIcePalace/missions/Girders", "Girders")
  Add(10, 7.5 + 6 * x, Peg.Level, 20, "../TheIcePalace/missions/Return", "Return")
  Add(5.5, 7.5 + 3 * x - 0.1, Peg.Level, 20, "../TheIcePalace/missions/Escape", "Escape")
  Add(5.5, 7.5 - 3 * x - 0.1, Peg.Level, 20, "../TheIcePalace/missions/Retrieval", "Retrieval")

  return { bg = { 0.12, 0.24, 0.06 } }
end

	