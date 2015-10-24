class Flight < ActiveRecord::Base
  belongs_to :destination, :class_name => "Airport"
  belongs_to :departure, :class_name => "Airport"

  has_many :bookings

  accepts_nested_attributes_for  :bookings, allow_destroy: true

  def self.get_date
    Flight.distinct.pluck(:departure_date)
  end

  def self.formatted_departure_date
    date = get_date
    date.map{ |date|date.strftime("%d/%m/%y")}.uniq!
  end

  def self.search(params)
    if params[:search]
      Flight.chosen_date(params[:date].to_date).
      where(destination_id: params[:destination_id].to_i, departure_id: params[:departure_id].to_i )
    else
    end
  end

  def self.chosen_date(date)
    where(:departure_date => date.beginning_of_day..date.end_of_day)
  end
end
