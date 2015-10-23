class Booking < ActiveRecord::Base
  before_save: self.ticket_no = self.id + 5000

  belongs_to :user
  belongs_to :flight
  validates :no_of_passengers, presence: true
  validates :flight_id, presence: true
end
