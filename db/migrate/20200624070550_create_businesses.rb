class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :business_name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.float :latitude, null: false
      t.float :longtitude, null: false
      t.integer :rating, null: false
      t.string :website
      t.integer :zip_code
      t.integer :user_id
      t.timestamps
    end
    add_index :businesses, :user_id
  end
end
