class Game < ApplicationRecord
  #validations
  validates :field, presence: true
  validates :player, presence: true
  validates :date_time, presence: true
  # associations
  belongs_to :field
  belongs_to :player
  # has_many :players_attending, class_name: "PlayerGame"
  has_many :player_games
  has_many :players, through: :player_games

  def players_attending
    player_games.where(attending: true).map do |player_game|
      player_game.player
    end
  end

  def friendly_date_time!
    date_time.strftime("%A, %b %d, %Y at %l:%M %p")
  end
end
