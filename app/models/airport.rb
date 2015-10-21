class Airport < ActiveRecord::Base
  has_many :landing, :foreign_key => :destination_id, :class_name => "Flight"
  has_many :take_offs, :foreign_key => :departure_id, :class_name => "Flight"
  validates :name, presence: true
  validates :departure_date, presence: true
end
