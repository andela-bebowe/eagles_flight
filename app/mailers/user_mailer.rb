class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    @url = "http://www.google.com"
    mail(to: @user.email, subject: "test welcome email")
  end
end
