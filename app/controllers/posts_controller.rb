class PostsController < ApplicationController
	def index
		@posts = post.all
	end

	def show
		@post = post.find(params[:id])
	end

	def new
		@post = post.new
	end

	def create
		@post = post.create()
	end

	def edit
		@post = post.find(params[:id])
	end

	def update
		@post = post.find(params[:id])
		@post.update()
	end

	def destroy
		@post = post.find(params[:id])
		@post.destroy    
	end
end
