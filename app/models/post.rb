class Post < ActiveRecord::Base
    attr_accessor :show_name
    attr_accessor :imdb_link
    attr_accessor :text
    validates :show_name, presence: true
    validates :text, presence: true
	belongs_to :user
	belongs_to :wall
	has_many :comments
end
