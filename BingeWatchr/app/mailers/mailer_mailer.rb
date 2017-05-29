class MailerMailer < ApplicationMailer
  def mail1(user, msg)
    @user = user
    @msg = msg
    mail(to: @user.email, subject: 'Nuevo contenido en BingeWatchrs !')
  end
end
