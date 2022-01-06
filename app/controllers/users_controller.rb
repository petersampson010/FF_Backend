class UsersController < ApplicationController
    include HelperModule

    def index
        puts 'hitting'
        render json: User.all
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            render json: @user 
        else 
            render json: {"errors": @user.errors.full_messages}, status: :bad_request
        end 
        puts @user.errors.full_messages
    end 
    
    private 
    def user_params
        params.permit(:email, :password, :password_confirmation, :team_name, :transfers, :budget, :gw_start, :admin_user_id)
    end 
end
    