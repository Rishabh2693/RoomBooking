class Room < ApplicationRecord
  validates :room_number, uniqueness: { message: "Room number should be unique" }
end
