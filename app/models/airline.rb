class Airline < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
  has_many :planes
end
