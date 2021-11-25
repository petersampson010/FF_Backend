class GameweeksController < ApplicationController
include HelperModule

    def index 
        gameweeks = Gameweek.all
        render json: find_from_params(gameweeks, gameweek_params)
    end 

    def create
        gameweek = Gameweek.create(gameweek_params)
        render json: gameweek
    end 

    # def show
    #     gameweek = Gameweek.find(params[:id])
    #     render json: gameweek
    # end 

    def update
        gameweek = Gameweek.find(params[:id])
        gameweek.update(gameweek_params)
        render json: gameweek
    end 

    def destroy 
        gameweek = Gameweek.find(gameweek_params[:id])
        gameweek.delete
    end 

    # def admin_user
    #     id = params[:id].to_i
    #     admin_user_gameweeks = Gameweek.all.filter{|x| x.admin_user_id===id}
    #     render json: admin_user_gameweeks
    # end 

    private

    def gameweek_params 
        params.permit(:gameweek_id, :date, :opponent, :score, :complete, :gameweek, :admin_user_id)
    end 
end
