class CommentsController < ApplicationController
	def index
		@comments = comment.all
	end

	def show
		@comment = comment.find(params[:id])
	end

	def new
		@comment = comment.new
	end

	def create
		@comment = comment.create()
	end

	def edit
		@comment = comment.find(params[:id])
	end

	def update
		@comment = comment.find(params[:id])
		@comment.update()
	end

	def destroy
		@comment = comment.find(params[:id])
		@comment.destroy    
	end
end
