class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create(params)
        render json: user
    end 

    def show
        user = User.find(params[:id])
        render json: user
    end 

    def destroy 
        user = User.find(params[:id])
        user.delete
    end 
end
