json.extract! booking, :id, :room_number, :email, :start, :end, :created_at, :updated_at
json.url booking_url(booking, format: :json)