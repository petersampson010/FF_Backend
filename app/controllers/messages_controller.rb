class MessagesController < ApplicationController

    def index
        messages = Message.all
        render json: messages
    end

    def create 
        puts 'hit'
        puts message_params
        message = Message.create(message_params)
        render json: message
    end 

    private 

    def message_params 
        params.require(:message).permit!
    end 

end
