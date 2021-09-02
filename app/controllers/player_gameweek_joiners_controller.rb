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

    def find
        player_gameweeks = PlayerGameweekJoiner.all
        puts player_gameweeks
        puts 'break0'
        puts player_gameweeks[0].player_id.class
        puts 'break1'
        player_gameweek = player_gameweeks.filter{|pg| (pg.gameweek_id===params[:gw_id].to_i) && (pg.player_id===params[:p_id].to_i)}
        puts player_gameweek
        puts 'break2'
        puts player_gameweek[0]
        render json: player_gameweek
    end

    def by_user
        records = Record.all.filter{ |r| r.user_id === params[:user_id].to_i}
        player_ids = records.map{|r| r.player_id}
        pg_joiners = PlayerGameweekJoiner.all.filter{ |pgj| player_ids.include?(pgj.player_id)}
        render json: pg_joiners
    end

        

    private

    def player_gameweek_joiner_params
        params.require(:player_gameweek_joiner).permit!
    end 
end
