class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :payment_method
      t.integer :total_price
      t.integer :shipping_status
      t.string :shipping_name
      t.text :shipping_address
      t.integer :shipping_price

      t.timestamps
    end
  end
end
