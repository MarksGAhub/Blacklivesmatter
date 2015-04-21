class PostsController < ApplicationController
      def index
        @posts = Post.all
      end

      def new
        @post = Posts.new
      end

      def create
          @post = Post.new(post_params)
      if @post.save
            redirect_to posts_paths
        else
            render 'new'
        end
      end


      def show
        @post = Post.find(params[:id])
        @comments = @post.comments.new
        @comment = @post.comments
      end

      private

      def post_params
        params.require(:post).permit(:title, :body)
    end


end
