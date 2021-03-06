class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :username, :role, :profile_pic

  # attr_accessible :title, :body
  mount_uploader :profile_pic, ProfilePicUploader

  has_many :recommendations
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
  validates :email, presence: true, allow_blank: false
  validates :email, uniqueness: true

  include Gravtastic
  gravtastic size: 70, default: "retro", secure: true 

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end
  
end
