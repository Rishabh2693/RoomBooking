class AddLibraryMemberToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :email, foreign_key: true
  end
end
