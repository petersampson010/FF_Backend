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
            head(:unprocessable_entity)
        end 
    end 
    
    private 
    def user_params
        params.permit(:email, :password, :password_confirmation)
    end 
end
    