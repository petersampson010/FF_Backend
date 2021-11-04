class MessagesController < ApplicationController
include HelperModule

    def index
        messages = Message.all
        render json: find_from_params(messages, message_params)
    end

    def create 
        message = Message.create(message_params)
        render json: message
    end 

    private 

    def message_params 
        params.permit(:message_id, :name, :email, :msg)
    end 

end
