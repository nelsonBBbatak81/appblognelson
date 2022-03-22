class HomeController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def sendMessage

    if params[:name] != '' || params[:email] != '' || params[:message] != ''
      @message = Contact.new(name: params[:name], email: params[:email], message: params[:message])
      @message.request = request
      @message.deliver

      redirect_to root_path, notice: "Succesfully send message!" 
    else
      redirect_to root_path, notice: "Failed send message!" 
    end

  end
end