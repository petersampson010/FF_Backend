class PlayerGameweekJoinersController < ApplicationController
include HelperModule

    def index 
        pg_joiners = PlayerGameweekJoiner.all
        render json: find_from_params(pg_joiners, pg_joiner_params)
    end 

    def create
        player_gameweek_joiner = PlayerGameweekJoiner.create(pg_joiner_params)
        render json: player_gameweek_joiner
    end 

    def update
        player_gameweek_joiner  = PlayerGameweekJoiner.find(params[:id])
        player_gameweek_joiner.update(pg_joiner_params)
        render json: player_gameweek_joiner
    end 

    # def show
    #     player_gameweek = PlayerGameweekJoiner.find(params[:id])
    #     render json: player_gameweek
    # end 

    def destroy 
        player_gameweek = PlayerGameweekJoiner.find(params[:id])
        player_gameweek.delete
    end 

    # def by_gw
    #     player_gameweeks = PlayerGameweekJoiner.all
    #     player_gameweeks = player_gameweeks.filter{|pg| pg.gameweek_id===params[:gw_id].to_i}
    #     render json: player_gameweeks
    # end 

    # def find
    #     player_gameweeks = PlayerGameweekJoiner.all
    #     player_gameweek = player_gameweeks.filter{|pg| (pg.gameweek_id===params[:gw_id].to_i) && (pg.player_id===params[:p_id].to_i)}
    #     render json: player_gameweek
    # end

    def by_user
        records = Record.all.filter{ |r| r.user_id === params[:user_id].to_i}
        player_ids = records.map{|r| r.player_id}
        pg_joiners = PlayerGameweekJoiner.all.filter{ |pgj| player_ids.include?(pgj.player_id)}
        render json: pg_joiners
    end

        

    private

    def pg_joiner_params
        params.permit(:pg_id, :minutes, :assists, :goals, :own_goals, :y_cards, :r_cards, :bonus, :penalty_miss, :goals_conceded, :total_points, :player_id, :gameweek_id)
    end 
end
