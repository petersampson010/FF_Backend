class SessionsController < ApplicationController
    include HelperModule

    # Creating a session, not a User 
    def create 
        @user = User.where(email: params[:email]).first

        if @user&.valid_password?(params[:password])
            render json: user
        else 
            render json: {"errors": @user.errors.full_messages}, status: :bad_request
        end 
    end 

    # Destroying a session, not a user
    def destroy 

    end 

end
    