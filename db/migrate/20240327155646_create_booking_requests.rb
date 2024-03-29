class CreateBookingRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_requests do |t|
      t.integer :flat_id
      t.string :status

      t.timestamps
    end
  end
end
