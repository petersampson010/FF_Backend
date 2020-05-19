class PlayersController < ApplicationController
    def index 
        players = Player.all
        render json: players
    end 

    def create
        players = Player.create(player_params)
        render json: players
    end 

    def show
        players = Player.find(params[:id])
        render json: players
    end 

    def destroy 
        players = Player.find(params[:id])
        players.delete
    end 

    private 

    def player_params 
        params.require(:player).permit!
    end 
end
