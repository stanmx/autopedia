class NotificationsMailer < ActionMailer::Base
  
  default :from => "noreply@aestudio.mx"
  default :to => "stan@aestudio.mx"

  def new_message(message)
    @message = message
    mail(:subject => "[autopedia] Contacto")
  end

  def new_certification(certification)
    @certification = certification
    mail(:subject => "[autopedia] Certificate")
  end

  def new_newsletter(newsletter)
    @newsletter = newsletter
    mail(:subject => "[autopedia] Suscripción")
  end

end
