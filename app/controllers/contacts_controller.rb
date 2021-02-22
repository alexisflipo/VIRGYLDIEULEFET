class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      @contact.save
      ContactMailer.with(contact: @contact).contact_email(@contact).deliver_later
      ContactMailer.with(contact: @contact).admin_email(@contact).deliver_later
      redirect_to root_path, notice: "Message envoyé avec succès." + " " +
      "Merci, je vous réponds dans les plus brefs délais."
    else 
      flash[:alert] = "Un problème est survenu, veuillez réessayer ultérieurement"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
