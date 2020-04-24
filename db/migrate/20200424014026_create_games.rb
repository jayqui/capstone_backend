class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :player_id
      t.integer :field_id
      t.datetime :date_time

      t.timestamps
    end
  end
end
