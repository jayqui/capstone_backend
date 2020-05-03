class Field < ApplicationRecord

  # associations
  has_many :games
  has_many :players, through: :games

  # def friendly_start_time!
  # end
end
