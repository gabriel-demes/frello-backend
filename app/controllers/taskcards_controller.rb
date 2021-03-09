class TaskcardsController < ApplicationController

    def index
        @taskcards = Taskcard.all
        render json: @taskcards
    end
    
    def create 
       @taskcard = Taskcard.create(taskcard_params)
       render json: @taskcard
    end

    def destroy 
        @taskcard = Taskcard.find(params[:id])
        @taskcard.destroy
        render json: @taskcard
    end




    private 

    def taskcard_params
        params.permit(:title,:deadline,:description)
    end
end
