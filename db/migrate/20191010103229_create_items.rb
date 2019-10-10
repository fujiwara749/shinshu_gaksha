class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :artist_id
      t.integer :genre_id
      t.integer :label_id
      t.string :item_name
      t.integer :price
      t.text :image_id
      t.boolean :sales_status
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
