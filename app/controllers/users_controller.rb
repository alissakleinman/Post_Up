class UsersController < ApplicationController
  def new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to POST UP!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem creating your account."
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation)
    end
end

