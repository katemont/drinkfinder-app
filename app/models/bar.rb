class Bar < ActiveRecord::Base
  attr_accessible :location, :name

  # has_and_belongs_to_many: recommendations

end
