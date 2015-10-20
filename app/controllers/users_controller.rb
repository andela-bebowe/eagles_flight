class UsersController < ApplicationController
	def show
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			log_in(@user)
			@current_user = user
			UserMailer.welcome_email(@user).deliver
			flash[:success] = "Welcome to Eagles Flight"
			redirect_to @user
		else
			render 'new'
		end
	end
	private
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)
		end
end
