class TaskcardsController < ApplicationController
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
