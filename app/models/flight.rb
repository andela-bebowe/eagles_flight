class Flight < ActiveRecord::Base
  belongs_to :destination, :class_name => "Airport"
  belongs_to :destination, :class_name => "Airport"
  validates :departure_date, presence: true
end
