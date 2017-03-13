class UsersController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    # render text: params.inspect
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
      # redirect_to "/users/#{@user.id}"
      # url_for @user
      #   - Check class name (User)
      #   - "#{class_name}_path(id: thing.id)"
    else
      render :new
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :bio, :avatar)
  end

end
