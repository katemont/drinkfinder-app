class Recommendation < ActiveRecord::Base
  attr_accessible :bar_id, :review, :user_id

  belongs_to :user
  belongs_to :bar
  
end
