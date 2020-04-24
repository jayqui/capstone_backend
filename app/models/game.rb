class Game < ApplicationRecord
  # associations
  belongs_to :field
  belongs_to :player
end
