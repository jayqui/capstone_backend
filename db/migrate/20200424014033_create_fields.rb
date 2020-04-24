class CreateFields < ActiveRecord::Migration[6.0]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :address
      t.datetime :open_time
      t.datetime :close_time
      t.string :image_url

      t.timestamps
    end
  end
end
