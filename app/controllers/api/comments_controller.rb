class Api::CommentsController < BaseController
	def index
		@comment = Comment.where(post_id: params[:post_id])
		respond_with @comment
	end

	def create
		 if(!User.where(id: params[:current_user]).blank?)
		 	@post = Post.find(params[:post_id])
		    comment = @post.comments.new
		    comment.user = current_user
		    comment.text = params[:comment_text]
		    if(comment.save)
		    	respond_with status: 201
		    else
		    	respond_with status: 422
		    end
		 else
		 	respond_with status: 422
		 end
	end

	def destroy
		respond_with Comment.destroy(params[:id])
	end
end