class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(:body => params[:body])
    redirect_to (post_path(@post))

  end

end
