class OrganizationsController < ApplicationController

    def index 
        @organizations = Organization.all 
        render json: @organizations
    end

    def show
        @organization = Organization.find(params[:id])
        
        render json: @organization
    end

    def create
        @organization = Organization.create(name: organization_params[:name])
        #Memebership.create(user_id: organization_params[:user_id], organization_id: @organization.id)
        render json: @organization
    end


    private
  
    def organization_params
        params.permit(:name, :membership_code, :user_id)
    end
end
