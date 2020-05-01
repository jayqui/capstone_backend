class PlayerGame < ApplicationRecord

  # associations
  belongs_to :game
  belongs_to :player
end
