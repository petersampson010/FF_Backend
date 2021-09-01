class UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end 

    def create
        user = User.create(user_params)
        render json: user
    end 

    def show
        user = User.find(params[:id])
        render json: user
    end 

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy 
        user = User.find(params[:id])
        user.delete
    end 

    def records 
        user = User.find(params[:id])
        records = Record.all.filter{|x| x.user_id===user.user_id}
        render json: records
    end 

    def latest_starters
        user = User.find(params[:id])
        players = Player.all 
        records = Record.all.filter{|x| x.user_id===user.user_id && x.sub===false}
        records_player_ids = records.map{|x| x.player_id}
        user_players = players.select{|x| records_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def gw_starters
        user_id = params[:id].to_i
        gw_id = params[:gameweek_id].to_i
        records = Record.all.filter{ |r| r.gameweek_id === gw_id && r.user_id === user_id && r.sub === false }
        player_ids = records.map{ |r| r.player_id }
        players = Player.all.filter{ |p| player_ids.include?(p.player_id) }
        render json: players
    end 

    def latest_subs 
        user = User.find(params[:id])
        players = Player.all 
        records = Record.all.filter{|x| x.user_id===user.user_id && x.sub===true}
        records_player_ids = records.map{|x| x.player_id}
        user_players = players.select{|x| records_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def gw_subs 
        user_id = params[:id].to_i
        gw_id = params[:gameweek_id].to_i
        records = Record.all.filter{ |r| r.gameweek_id === gw_id && r.user_id === user_id && r.sub }
        player_ids = records.map{ |r| r.player_id }
        players = Player.all.filter{ |p| player_ids.include?(p.player_id) }
        render json: players
    end 

    def pg_joiners
        
        # id = params[:gameweek_id].to_i
        # user = User.find(params[:id])
        # puts user
        # user_gameweeks = user.gameweeks
        # puts user_gameweeks
        # puts 'hi'
        # pgj_all = PlayerGameweekJoiner.all
        # puts pgj_all
        # pg_joiners = []
        # for i in user_gameweeks do 
        #     pgj = pgj_all.select{ |pgj| pgj.gameweek_id===i.gameweek_id}
        #     for j in pgj do 
        #         pg_joiners << j 
        #     end 
        # end 
        # # user.player_gameweek_joiners.filter{|pg| pg.gameweek_id===id}
        # render json: pg_joiners
    end 

    def total_points 
        user = User.find(params[:id])
        user_gameweek_joiners = user.user_gameweek_joiners
        total_points = user_gameweek_joiners.map{|ug| ug.total_points}.sum
        render json: total_points
    end

    private 

    def user_params 
        params.require(:user).permit!
    end 

end
