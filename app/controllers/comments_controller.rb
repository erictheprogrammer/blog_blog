class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params.permit[:comment])
  	@comment.save

  	redirect_to @post
  end

  def destroy
  end
end
