class ClientsController < ApplicationController

    def index 
        clients = Client.all
        render json: clients
    end 

    def show
        client = Client.find(params[:id])
        render json: client.memberships.sum(:charge)
    end 

end
