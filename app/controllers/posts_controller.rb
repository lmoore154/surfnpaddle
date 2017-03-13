class PostsController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
    @user = @post.user
    @image = @post.image
    @most_popular = Post.where("id != ?", "#{params[:id]}").order(created_at: :desc).limit(4)
    render "homes/index"
  end

end
