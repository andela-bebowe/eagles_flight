class SessionsController < ApplicationController
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    if !auth.nil?
      user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
      @auth_user = user
   elsif auth.nil?
      user = User.find_by(email: params[:session][:email].downcase)
    if user
      log_in(user)
      flash[:notice] = "Log In Successful"
      redirect_to root_url
    else
      flash[:alert] = "Error in page"
      render "new"
    end
  end
  def failure

  end

  def destroy
    log_out if logged_in?
    flash[:notice] = "Signed Out!"
    redirect_to root_url
  end
end
