class PlayerUserJoinersController < ApplicationController
    def index 
        player_user_joiners = PlayerUserJoiner.all
        render json: aplayer_user_joiners
    end 

    def create
        player_user_joiner = PlayerUserJoiner.create(params)
        render json: player_user_joiner
    end 

    def show
        player_user_joiner = PlayerUserJoiner.find(params[:id])
        render json: player_user_joiner
    end 

    def destroy 
        player_user_joiner = PlayerUserJoiner.find(params[:id])
        player_user_joiner.delete
    end 
end
