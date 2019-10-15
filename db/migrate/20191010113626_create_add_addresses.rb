class CreateAddAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :add_addresses do |t|
      t.integer :user_id
      t.string :add_postal_code
      t.text :add_address
      t.string :to_address
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
