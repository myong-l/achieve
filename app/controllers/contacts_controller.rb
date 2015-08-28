class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def thanks
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to contacts_thanks_path
    else
      render 'index'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :content, :email)
  end
end
