class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:sign_in][:email])
    if user && user.authenticate(params[:sign_in][:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully signed in!"
      redirect_to root_path
    else
      flash[:alert] = "Invalid email & password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end

end
