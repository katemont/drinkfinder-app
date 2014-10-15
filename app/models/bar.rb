class Bar < ActiveRecord::Base
  attr_accessible :location, :name

  has_many :recommendations

end
