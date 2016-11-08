class ContactController < ApplicationController

  def index
        @contacts = Contact.order(name: :asc).all
  end

  def new_contact

  end


  def  show_user
        @selected = Contact.find_by(id: params[:identity])
  end


  def favourite
      @selected = Contact.find_by(id: params[:id])
      @selected.update_attributes(:favourite => params[:fav])
      # uate attribute => true
      # id
      redirect_to("/#{@selected[:id]}")
  end


  def create
    # Create new Contact from params[:contact]
      contact = Contact.new(
        :name => params[:contact][:name],
        :adress => params[:contact][:address],
        :phonenumber => params[:contact][:phone],
        :email => params[:contact][:email])

      contact.save
      # Render contact's attributes
      redirect_to("/")

  end


end
