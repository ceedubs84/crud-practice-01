class ClientsController < ApplicationController
  def index
    @clients = Client.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    client = Client.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      injury: params[:injury],
      appointment_date: params[:appointment_date]
    )
    client.save
    redirect_to '/clients'
  end

  def show
    
  end
end
