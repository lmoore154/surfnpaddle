class UserMailer < ApplicationMailer

  def signup(user)
    @user = user
    mail(to: 'example@example.com', subject: "Welcome to Website!")
  end

end
