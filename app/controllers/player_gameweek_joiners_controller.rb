class PlayerGameweekJoinersController < ApplicationController

    def index 
        player_gameweeks = PlayerGameweek.all
        render json: aplayer_gameweeks
    end 

    def create
        player_gameweek = PlayerGameweek.create(params)
        render json: player_gameweek
    end 

    def show
        player_gameweek = PlayerGameweek.find(params[:id])
        render json: player_gameweek
    end 

    def destroy 
        player_gameweek = PlayerGameweek.find(params[:id])
        player_gameweek.delete
    end 
end
