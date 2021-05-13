class PlayerGameweekJoinersController < ApplicationController

    def index 
        player_gameweeks = PlayerGameweekJoiner.all
        render json: player_gameweeks
    end 

    def create
        player_gameweek_joiner = PlayerGameweekJoiner.create(player_gameweek_joiner_params)
        render json: player_gameweek_joiner
    end 

    def update
        player_gameweek_joiner  = PlayerGameweekJoiner.find(params[:id])
        player_gameweek_joiner.update(player_gameweek_joiner_params)
        render json: player_gameweek_joiner
    end 

    def show
        player_gameweek = PlayerGameweekJoiner.find(params[:id])
        render json: player_gameweek
    end 

    def destroy 
        player_gameweek = PlayerGameweekJoiner.find(params[:id])
        player_gameweek.delete
    end 

    def by_gw
        player_gameweeks = PlayerGameweekJoiner.all
        player_gameweeks = player_gameweeks.filter{|pg| pg.gameweek_id===params[:gw_id].to_i}
        render json: player_gameweeks
    end 
        

    private

    def player_gameweek_joiner_params
        params.require(:player_gameweek_joiner).permit!
    end 
end
