class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      log_in(user)
      flash[:notice] = "Log-in Successful"
      redirect_to root_url
    else
      render "new"
    end
  end

  def delete
    log_out if logged_in?
    redirect_to root_url
  end
end
