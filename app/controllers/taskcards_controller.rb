class TaskcardsController < ApplicationController

    def index
        @taskcards = Taskcard.all
        render json: @taskcards
    end

    def show 
        @taskcard = Taskcard.find(params[:id])
        render json: @taskcard
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

    def update
        @taskcard = Taskcard.find(params[:id])
        @taskcard.update(taskcard_params)
        #byebug
        render json: @taskcard
    end




    private 

    def taskcard_params
        params.permit(:title, :deadline, :description, :list_id)
    end
end
