class HomeController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def sendMessage

    @contact = Contact.new()
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.message = params[:message]
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: "Succesfully send message!"
    else
      redirect_to root_path, notice: "Failed send message! #{@contact.errors}"
    end



  end


end
