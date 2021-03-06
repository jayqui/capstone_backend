class Player < ApplicationRecord
  #validations
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :position, presence: true
  validates :dob, presence: true
  validates :level, presence: true

  # associations
  has_many :games_created, class_name: "Game"
  has_many :fields, through: :games_created
  has_many :games_attending, class_name: "PlayerGame"
  has_many :fields, through: :games_attending

  def age!
    ((Time.current - dob.to_time) / 1.year.seconds).floor
  end
end
