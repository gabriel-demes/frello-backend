class OrganizationsController < ApplicationController

    def index 
        @organizations = Organization.all 
        render json: @organizations
    end

    def show
        @organization = Organization.find(params[:id])
        #@list = List.find(params[:id])
        #@taskcard = Taskcard.find(params[:id])
        render json: @organization
    end

    def create
        @organization = Organization.find(organization_params)
        render json: @organization
    end


    private
  
    def organization_params
        params.permit(:name, :membership_code)
    end
end
