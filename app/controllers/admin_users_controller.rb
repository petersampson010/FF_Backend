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
