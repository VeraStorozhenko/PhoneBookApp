class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @contacts = Contact.where(['last_name LIKE ?', "%#{params[:search]}%"]) if params[:search]
    @search = params[:search]
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])

    if @contact.update(contact_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :telephone)
  end

end