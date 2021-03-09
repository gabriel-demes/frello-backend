class MemebershipsController < ApplicationController

    def show 
        @membership = Memebership.all
        render json: @membership
    end

    
    
end
