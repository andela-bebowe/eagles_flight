class Flight < ActiveRecord::Base
  belongs_to :destination, :class_name => "Airport"
  belongs_to :departure, :class_name => "Airport"
  has_many :passengers, :through => :bookings
  has_many :bookings
  validates_presence_of :destination, :departure, :departure_date, :price
  accepts_nested_attributes_for  :destination, :departure, :bookings

  def self.get_departure_date
    Flight.collect_column(:departure_date, :conditions => {:departure_date > Date.today})
  end
end
