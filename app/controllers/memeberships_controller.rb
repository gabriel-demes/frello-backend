class MemebershipsController < ApplicationController

    def show 
        @membership = Memebership.all
        render json: @membership
    end

    def index
        @memberships = Memebership.all
        #byebug
        render json: @memberships
    end

    def create 
        @membership = Memebership.create(membership_params)
        render json: @membership
    end

    def destroy 
        @membership = Memebership.params([:id])
        @membership.destroy
        render json: @membership
    end

    private

    def membership_params
        params.permit(:user_id, :organization_id)
    end

    
    
end
