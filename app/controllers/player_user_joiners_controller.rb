class PlayerUserJoinersController < ApplicationController
    def index 
        player_user_joiners = PlayerUserJoiner.all
        render json: player_user_joiners
    end 

    def create
        player_user_joiner = PlayerUserJoiner.create(player_user_joiner_params)
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

    private 

    def player_user_joiner_params 
        params.require(:player_user_joiner).permit!
    end 
end
