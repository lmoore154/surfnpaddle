class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update]
  before_action :require_user, only: [:new, :create, :edit, :update, :destroy]
  before_action :owned_by, only: [:destroy]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    # @post = Post.new(post_params)
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to :root
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def show
    @user = @post.user
    @image = @post.image
    @most_popular = Post.where("id != ?", "#{params[:id]}").order(created_at: :desc).limit(4)
    render "homes/index"
  end

  def destroy
    @post.destroy
    redirect_to :root
  end


  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def owned_by
    @post = current_user.posts.find_by(id: params[:id])
    unless @post #&& @chirp.user == current_user
      flash[:warning] = "That's not your purse! I don't know you!"
      redirect_to :root
    end
  end

end
