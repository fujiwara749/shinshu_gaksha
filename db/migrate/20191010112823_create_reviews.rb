class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :review_title
      t.text :review
      t.string :mark

      t.timestamps
    end
  end
end
