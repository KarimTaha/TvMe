class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.create()
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def update
		@comment = Comment.find(params[:id])
		@comment.update()
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy    
	end
end
