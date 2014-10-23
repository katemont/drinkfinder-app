class Bar < ActiveRecord::Base
  attr_accessible :location, :name, :latitude, :longitude

  has_many :recommendations, :dependent => :destroy

  geocoded_by :location  
  after_validation :geocode
end
