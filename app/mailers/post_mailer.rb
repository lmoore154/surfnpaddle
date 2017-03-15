class PostMailer < ApplicationMailer

  def share(post, share_with, user)
    @post = post
    mail(to: share_with, from: user.email, subject: "Check out this post from You Otter Know!")
  end

end
