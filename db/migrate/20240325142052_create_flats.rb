class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :property_name
      t.string :description
      t.string :property_type
      t.string :address
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :max_guests
      t.float :price_per_night
      t.string :amenities

      t.timestamps
    end
  end
end
