# == Schema Information
#
# Table name: games
#
#  id         :bigint           not null, primary key
#  player_id  :integer
#  field_id   :integer
#  date_time  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Game < ApplicationRecord
  #validations
  validates :field, presence: true
  validates :player, presence: true
  validates :date_time, presence: true
  # associations
  belongs_to :field
  belongs_to :player
  # has_many :players_attending, class_name: "PlayerGame" <- turned this into a method below to better attain player info
  has_many :player_games, dependent: :destroy
  has_many :players, through: :player_games

  def players_attending
    players.where(player_games: { attending: true })
  end

  def friendly_date_time!
    date_time.strftime("%A, %B %e, %Y at %l:%M %p")
  end
end
