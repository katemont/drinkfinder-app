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

  include Gravtastic
   gravtastic size: 50, default: "retro", secure: true 
end
