class HomesController < ApplicationController

  def index
    @post = Post.order(created_at: :desc).first
    @user = @post.user
    @most_popular = Post.order(created_at: :desc).offset(1).limit(4)
  end

end
