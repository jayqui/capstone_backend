class Game < ApplicationRecord
  #validations
  validates :field, presence: true
  validates :player, presence: true
  validates :date_time, presence: true
  # associations
  belongs_to :field
  belongs_to :player
  has_many :players_attending, class_name: "PlayerGame"

  def friendly_date_time!
    date_time.strftime("%A, %b %d, %Y at:%l:%M %p")
  end
end
