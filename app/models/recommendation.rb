class Recommendation < ActiveRecord::Base
  attr_accessible :bar_id, :review, :user_id, :tag_list

  belongs_to :user
  belongs_to :bar

  acts_as_taggable
  
  validates :user_id, presence: true
  validates :review, presence: true
  validates_length_of :review, maximum: 200

  # validate :is_there_a_bar?

  # Custom validates error
  # def is_there_a_bar?
  #     # validates :bar_id, presence: true, uniqueness: {message: "there's no bar"}
  #     errors.add(:base, "Sorry, there's no bar") unless bar_id
  # end

end
