class ForumPostsController < ApplicationController

	before_action	:authenticate_user!, only: [:create, :destroy]	

	def create
		@thread = ForumThread.find(params[:forum_thread_id])
		@post 	= @thread.forum_posts.new(resource_params)

		# @post.forum_thread = @thread
		@post.user = current_user

		if @post.save
			redirect_to forum_thread_path(@thread) #forum_threads#show
		else
			render 'forum_threads/show'
		end
	end

	def destroy
		@post = ForumPost.find(params[:id])
    	@post.destroy
    	flash[:notice]  = "Post dengan id #{params[:id]} telah dihapus"
    	redirect_to root_path
  	end 

	private

	def resource_params
		params.require(:forum_post).permit(:content)
		
	end
end

