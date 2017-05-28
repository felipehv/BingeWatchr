class MailerMailer < ApplicationMailer
  def mail1(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
