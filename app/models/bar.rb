class Bar < ActiveRecord::Base
  attr_accessible :location, :name, :latitude, :longitude

  has_many :recommendations
  accepts_nested_attributes_for :recommendations, allow_destroy: true

  geocoded_by :location  
  after_validation :geocode
end
