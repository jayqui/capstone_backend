# == Schema Information
#
# Table name: player_games
#
#  id         :bigint           not null, primary key
#  game_id    :integer
#  player_id  :integer
#  attending  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PlayerGame < ApplicationRecord

  # associations
  belongs_to :game
  belongs_to :player
end
