class Airline < ActiveRecord::Base
  validates :name, presence: true
  has_many :planes
end
