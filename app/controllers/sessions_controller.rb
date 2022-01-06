class SessionsController < ApplicationController
    include HelperModule

    # Creating a session, not a User 
    def create 
        user = User.where(email: params[:email]).first

        if user&.valid_password?(params[:password])
            render json: user
        else 
            head(:unauthorized)
        end 
    end 

    # Destroying a session, not a user
    def destroy 

    end 

end
    