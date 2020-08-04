class UsersController < ApplicationController
  def index   
      @users = User.all
   
  end

  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_param)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def search
      # @users = User.where("website_heading LIKE ?","%" + params[:q]+ "%")
  end

  private

  def user_param
    params.require(:user).permit(:username, :web_url, :password, :password_confirmation)
  end
end
