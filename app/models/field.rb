class Field < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :open_time, presence: true
  validates :close_time, presence: true
  validates :image_url, presence: true

  # associations
  has_many :games
  has_many :players, through: :games
end
