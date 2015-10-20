class UserMailer < ApplicationMailer
  def welcome_email(user)
    mail(to: @user.email, subject: "Welcome to Eagles Flight.")
  end
end
