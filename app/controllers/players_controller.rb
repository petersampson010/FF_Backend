class PlayersController < ApplicationController
    def index 
        players = Player.all
        render json: players
    end 

    def create
        players = Player.create(params)
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
end
