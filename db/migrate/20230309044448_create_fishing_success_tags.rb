class CreateFishingSuccessTags < ActiveRecord::Migration[6.1]
  def change
    create_table :fishing_success_tags do |t|
      t.integer :tag_id
      t.integer :fishing_success_id
      t.timestamps
    end
  end
end