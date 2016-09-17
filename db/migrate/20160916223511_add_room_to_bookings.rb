class AddRoomToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :room_number, foreign_key: true
  end
end
