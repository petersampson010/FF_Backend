class GameweeksController < ApplicationController

    def index 
        gameweeks = Gameweek.all
        render json: gameweeks
    end 

    def create
        gameweek = Gameweek.create(params)
        render json:gameweek
    end 

    def show
        gameweek = Gameweek.find(params[:id])
        render json:gameweek
    end 

    def destroy 
        gameweek = Gameweek.find(params[:id])
        gameweek.delete
    end 
end
