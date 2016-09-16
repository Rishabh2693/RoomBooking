class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :room_number
      t.string :email
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
