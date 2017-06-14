class MailerMailer < ApplicationMailer
  def mail1(users, msg)
    @users = users
    @msg = msg
    @users.each do |user|
      @user = user
      mail(to: user.email, subject: 'Nuevo contenido en BingeWatchrs !')
    end
  end
end
