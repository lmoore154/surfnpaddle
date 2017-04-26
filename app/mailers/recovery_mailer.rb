class RecoveryMailer < ApplicationMailer

  def reset(user, new_password)
    @user = user
    @new_password = new_password
    mail(to: @user.email, subject: "Password recovery for your account at You Otter Know")
  end

end
