class ListsController < ApplicationController

    def create 
        @list = List.find(list_params)
        render json: @list
    end

    def index 
        @lists = List.all 
        render json: @lists
    end

    def show 
        @list = List.find(params[:id])
        render json: @list
    end

    def destroy
        @list = List.find(params[:id])
        @list.destroy
        render json: @list
    end

    private

    def list_params
        params.permit(:title)
    end
end
