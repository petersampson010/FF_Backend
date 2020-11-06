class AdminUsersController < ApplicationController

    def index 
        admin_users = AdminUser.all
        render json: admin_users
    end 

    def create
        admin_user = AdminUser.create(admin_user_params)
        render json: admin_user
    end 

    def show 
        admin_user = AdminUser.find(params[:id])
        render json: admin_user 
    end 

    def players
        admin_user = AdminUser.find(params[:id])
        players = Player.all
        admin_user_players = players.select{|x| x.admin_user_id===admin_user.id}
        render json: admin_user_players
    end 

    def destroy 
        admin_user = AdminUser.find(params[:id])
        admin_user.delete
        admin_users = AdminUser.all
        render json: admin_users
    end 

    private 

    def admin_user_params 
        params.require(:admin_user).permit!
    end 



end
