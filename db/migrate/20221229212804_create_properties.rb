class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.integer :area
      t.string :kind
      t.string :operation
      t.string :city
      t.string :zone
      t.text :description
      t.integer :lot_area
      t.integer :parkings

      t.timestamps
    end
  end
end
