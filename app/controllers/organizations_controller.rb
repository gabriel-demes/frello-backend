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
        @organization = Organization.create(name: organization_params[:name], memembership_code: organization_params[:memembership_code])
        if @organization.save
             @organization.update(memembership_code: Randomstring.generate(6))
        end
        
        #@organization.save
        render json: @organization
    end


    private
  
    def organization_params
        params.permit(:name, :memembership_code, :user_id)
    end
end
