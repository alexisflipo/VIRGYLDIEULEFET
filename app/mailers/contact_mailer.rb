class ContactMailer < ApplicationMailer
    
    def admin_email(contact)
        @contact = contact
        mail to:"dividproduction@gmail.com"
        mail from: @contact.email, subject: "#{@contact.email} t'a contacté"
    end
    def contact_email(contact)
        @greeting = "Bonjour"
        @contact = contact
    
        mail to: @contact.email,
              subject: "Confirmation d'envoi"
    end
    
  end
  