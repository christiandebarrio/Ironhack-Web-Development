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
end
