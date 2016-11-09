class ContactController < ApplicationController

  def index
        @contacts = Contact.order(name: :asc).all
  end

  def new_contact

  end

  def my_favourite
        @fav_array = Contact.where(favourite: true)
  end


  def  show_user
        @selected = Contact.find_by(id: params[:identity])
  end

  def search
        @variable = params[:q]
        redirect_to("/search_result/#{@variable}")
  end


  def search_result
          @variable = params[:variable]
          @contacts = Contact.where("name like ?",  "%#{@variable}%")
  end

  def favourite
      @selected = Contact.find_by(id: params[:id])
      @selected.update_attributes(:favourite => params[:fav])
      # uate attribute => true
      # id
      redirect_to("/identity/#{@selected[:id]}")
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
