def bank_score
  rand(16..21)
end

def pick_card
  rand(1..11)
end

def game_outcome(bank, score)
  [bank, score]
end

puts game_outcome(bank_score, pick_card)
