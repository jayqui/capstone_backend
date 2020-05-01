class Game < ApplicationRecord
  # associations
  belongs_to :field
  belongs_to :player
  has_many :players_attending, class_name: "PlayerGame"
end
