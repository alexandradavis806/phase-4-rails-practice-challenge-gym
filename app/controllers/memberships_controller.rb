class MembershipsController < ApplicationController
    

    def index
        memberships = Membership.all
        render json: memberships
    end 

    def create 
        membership = Membership.create!(membership_params)
    end 

    private

    def membership_params
        params.permit(:client_id, :gym_id, :charge)
    end

end
