class Recommendation < ActiveRecord::Base
  attr_accessible :bar_id, :review, :user_id, :tag_list

  belongs_to :user
  belongs_to :bar

  acts_as_taggable
  
end
