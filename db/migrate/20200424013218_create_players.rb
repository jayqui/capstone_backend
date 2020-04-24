class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :position
      t.date :dob
      t.string :level

      t.timestamps
    end
  end
end
