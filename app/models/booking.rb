class Booking < ApplicationRecord
  validate :start_and_end_date_validation
  def start_and_end_date_validation
    if self.start > self.end
      errors.add(:start, "time should be less than End time")
    end
  end
end
