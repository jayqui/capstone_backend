class Game < ApplicationRecord
  #validations
  validates :field, presence: true
  validates :player, presence: true
  validates :date_time, presence: true
  # associations
  belongs_to :field
  belongs_to :player
  has_many :players_attending, class_name: "PlayerGame"
end
