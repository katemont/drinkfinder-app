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

  # invitation mailer details
  validates_presence_of :invitation_id, :message => 'is required'
  validates_uniqueness_of :invitation_id

  has_many :sent_invitations, :class_name => 'Invitation', :foreign_key => 'sender_id'
  belongs_to :invitation

  before_create :set_invitation_limit

  attr_accessible :login, :email, :name, :password, :password_confirmation, :invitation_token

  def invitation_token
    invitation.token if invitation
  end

  def invitation_token=(token)
    self.invitation = Invitation.find_by_token(token)
  end

  private

  def set_invitation_limit
    self.invitation_limit = 5
  end

  include Gravtastic
  gravtastic size: 120, default: "retro", secure: true 

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end
  
end
