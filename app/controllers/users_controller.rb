class UsersController < ApplicationController

    def show 
       @user = User.find(params)
       @organization = Organization.find(params)
       render json: @user, @organization
    end

    def create 
        @user = User.create(user_params)
        render json: @user
    end

    def destroy 
       @user = User.find(params[:id])
       @user.destroy
       render json: @user 
    end


    private 

    def user_params 
        params.permit(:username, :password, :name)
    end
end
