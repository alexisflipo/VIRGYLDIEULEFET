class ContactMailer < ApplicationMailer
    def admin_email
        mail(to: ENV['ADMIN_EMAIL'], subject: "Tu as un nouveau contact")
    end
    def contact_email(contact)
        @greeting = "Bonjour"
        @contact = contact
    
        mail to: @contact.email,
              subject: "Confirmation d'envoi"
    end
    
  end
  