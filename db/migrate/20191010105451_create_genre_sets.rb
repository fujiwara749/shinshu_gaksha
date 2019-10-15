class CreateGenreSets < ActiveRecord::Migration[5.2]
  def change
    create_table :genre_sets do |t|
      t.integer :genre_id
      t.integer :item_id
      t.timestamps
    end
  end
end
