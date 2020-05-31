class Game < ApplicationRecord
  #validations
  validates :field, presence: true
  validates :player, presence: true
  validates :date_time, presence: true
  # associations
  belongs_to :field
  belongs_to :player
  has_many :player_games, dependent: :destroy
  has_many :players, through: :player_games

  def players_attending
    players.where(player_games: { attending: true })
  end

  def friendly_date_time!
    date_time.strftime("%A, %B %e, %Y at %l:%M %p")
  end
end
