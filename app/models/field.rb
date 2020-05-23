# == Schema Information
#
# Table name: fields
#
#  id         :bigint           not null, primary key
#  name       :string
#  address    :string
#  open_time  :datetime
#  close_time :datetime
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
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
