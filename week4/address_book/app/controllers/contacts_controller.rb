class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.show
  end

  def create
    contact = Contact.new(
      :name => params[:contact][:name],
      :address => params[:contact][:address],
      :phone => params[:contact][:phone],
      :email => params[:contact][:email],
    )

    contact.save
    
    redirect_to('/contacts')
  end

  def show
    @contact = Contact.find_by(id: params[:id]) ||
    if @contact.empty?
      render(contact_not_found)
    end
  end
end
