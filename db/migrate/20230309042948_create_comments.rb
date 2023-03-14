class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :angler_id
      t.integer :fishing_success_id
      t.text :content, null: false
      t.timestamps
    end
  end
end