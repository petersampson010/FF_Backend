class GameweeksController < ApplicationController

    def index 
        gameweeks = Gameweek.all
        render json: gameweeks
    end 

    def create
        gameweek = Gameweek.create(gameweek_params)
        puts gameweek_params
        render json: gameweek
    end 

    def show
        gameweek = Gameweek.find(params[:id])
        render json: gameweek
    end 

    def update
        puts 'dis one'
        gameweek = Gameweek.find(params[:id])
        gameweek.update(gameweek_params)
        render json: gameweek
    end 

    def destroy 
        gameweek = Gameweek.find(gameweek_params[:id])
        gameweek.delete
    end 

    def admin_user
        id = params[:id].to_i
        admin_user_gameweeks = Gameweek.all.filter{|x| x.admin_user_id===id}
        render json: admin_user_gameweeks
    end 

    private

    def gameweek_params 
        params.require(:gameweek).permit!
    end 
end
