class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@poemanocopo.com.br"
  default :to => "giancarlo@poemanocopo.com.br"

  def new_message(message)
    @message = message
    mail(:subject => "[Poema enviado pelo site] #{message.subject}")
  end

end
