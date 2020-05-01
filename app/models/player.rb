class Player < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  # associations
  has_many :created_games, class_name: "Game"
  has_many :fields, through: :created_games
  has_many :games_attending, class_name: "PlayerGame"
  has_many :fields, through: :games_attending
end
