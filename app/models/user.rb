class User < ActiveRecord::Base
	attr_accessor :f_name
	attr_accessor :l_name
	attr_accessor :city
	attr_accessor :country
	attr_accessor :date_of_birth
	attr_accessor :gender
	acts_as_followable
    acts_as_follower
end