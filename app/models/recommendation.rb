class Recommendation < ActiveRecord::Base
  attr_accessible :bar_id, :review, :user_id, :tag_list

  belongs_to :user
  belongs_to :bar

  acts_as_taggable
  
  validates :user_id, presence: true
  validates :review, presence: true
  validates_length_of :review, maximum: 200
end
