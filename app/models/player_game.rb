class PlayerGame < ApplicationRecord

  # associations
  playergames belongs_to :game
  playergames belongs_to :player
end
