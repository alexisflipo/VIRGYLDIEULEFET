class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: "Message envoyé avec succès." + " " +
      "Merci, je vous réponds dans les plus brefs délais."
    else 
      render :new
      flash[:alert] = "Something went wrong"
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
