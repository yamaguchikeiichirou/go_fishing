class CreateFishingSuccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :fishing_successes do |t|
      t.integer :angler_id
      t.datetime :fishing_day, null: false
      t.string :species
      t.string :tackle
      t.string :method
      t.string :place, null: false
      t.float :lng, null: false
      t.float :lat, null: false
      t.text :situation
      t.timestamps 
    end
  end
end