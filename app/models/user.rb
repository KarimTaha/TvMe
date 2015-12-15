class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    mount_uploader :avatars, AvatarUploader

	validates :f_name, presence: true
	validates :l_name, presence: true
    validates :gender, presence: true
    validates :username, presence: true
    validates_uniqueness_of :username


     has_one :wall
     has_many :posts
     has_many :comments
 	

    scope :male, where(gender: 0)
    
    acts_as_followable
    acts_as_follower
    ￼# Callbacks
before_create -> { self.token = SecureRandom.hex }, unless: :token?
end