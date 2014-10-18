class Bar < ActiveRecord::Base
  attr_accessible :location, :name, :latitude, :longitude

  has_many :recommendations

  geocoded_by :location  
  after_validation :geocode
end
