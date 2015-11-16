class User < ActiveRecord::Base
	attr_accessor :username
	attr_accessor :f_name
	attr_accessor :l_name
	attr_accessor :city
	attr_accessor :country
	attr_accessor :date_of_birth
	attr_accessor :gender
	attr_accessor :email

    mount_uploaders :avatars, AvatarUploader

	validates :f_name, presence: true
	validates :l_name, presence: true
    validates :gender, presence: true
    validates :email, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :username, presence: true
    validates_uniqueness_of :username


     has_one :wall
     has_many :posts
     has_many :comments
 	

    scope :male, where(gender: 0)
    
    acts_as_followable
    acts_as_follower
end