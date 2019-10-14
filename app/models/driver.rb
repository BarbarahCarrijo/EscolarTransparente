class Driver < User
  attr_accessor :name, :vehicle
  has_many :travel_routes
end
