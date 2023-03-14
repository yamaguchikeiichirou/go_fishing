class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.integer :angler_id
      t.integer :fishing_success_id
      t.timestamps
    end
  end
end