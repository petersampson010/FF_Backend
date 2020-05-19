class GameweekAdminUserJoinersController < ApplicationController

    def index 
        gameweek_admin_users = GameweekAdminUser.all
        render json: gameweek_admin_users
    end 

    def create
        gameweek_admin_user = GameweekAdminUser.create(params)
        render json: gameweek_admin_user
    end 

    def show
        gameweek_admin_user = GameweekAdminUser.find(params[:id])
        render json: gameweek_admin_user
    end 

    def destroy 
        gameweek_admin_user = GameweekAdminUser.find(params[:id])
        gameweek_admin_user.delete
    end 
end
