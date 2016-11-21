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
    client_id = params[:id]
    @client = Client.find_by(id: client_id)
    render 'show.html.erb'
  end

  def edit
    client_id = params[:id]
    @client = Client.find_by(id: client_id)
    render 'edit.html.erb'
  end

  def update
    client_id = params[:id]
    @client = Client.find_by(id: client_id)
    client.first_name = params[:first_name]
    client.last_name = params[:last_name]
    client.injury = params[:injury]
    client.appointment_date = params[:appointment_date]
    client.save
    redirect_to '/clients/#{client.id}'
  end

  def destroy
    client_id = params[:id]
    @client = Client.find_by(id: client_id)
    client.destroy
    redirect_to '/clients'
  end
end
