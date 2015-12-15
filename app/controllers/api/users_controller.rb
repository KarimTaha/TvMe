class Api::UsersController < BaseController
	def followers
		@followers =  User.find(params[:current_user]).followers
		respond_with @followers
	end

	def following
		@following = User.find(params[:current_user]).all_follows
		respond_with @following
	end

	def unfollow
		follower = User.find(params[:current_user])
		unfollowed = User.find(params[:user_id])
		respond_with follower.stop_followning(unfollowed)
		if(!follower.following?(followed))
			respond_with status: 201
		end
	end

	def follow
		follower = User.find(params[:current_user])
		followed = User.find(params[:user_id])
		if(follower.following?(followed))
			respond_with status: 201
		end
	end
	def timeline
		followers = User.find(params[:current_user]).followers
		@posts = Post.where(followers.include?(User.find(user_id:))).order(created_at: :desc)
		respond_with @posts
	end
end