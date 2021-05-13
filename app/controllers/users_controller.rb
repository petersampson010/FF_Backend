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

    def player_user_joiners 
        user = User.find(params[:id])
        player_user_joiners = PlayerUserJoiner.all.filter{|x| x.user_id===user.user_id}
        render json: player_user_joiners
    end 

    def current_team_start
        user = User.find(params[:id])
        players = Player.all 
        player_user_joiners = PlayerUserJoiner.all.filter{|x| x.user_id===user.user_id && x.sub===false}
        player_user_joiner_player_ids = player_user_joiners.map{|x| x.player_id}
        user_players = players.select{|x| player_user_joiner_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def gw_team_start
        user = User.find(params[:id])
        player_gameweek_joiners = PlayerGameweekJoiner.all.filter{|pg| pg.gameweek_id===params[:gameweek_id]}
        
    end 

    def team_sub 
        user = User.find(params[:id])
        players = Player.all 
        player_user_joiners = PlayerUserJoiner.all.filter{|x| x.user_id===user.user_id && x.sub===true}
        player_user_joiner_player_ids = player_user_joiners.map{|x| x.player_id}
        user_players = players.select{|x| player_user_joiner_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def pg_joiners
        puts 'here'
        id = params[:gameweek_id].to_i
        user = User.find(params[:id])
        puts user
        pg_joiners = user.player_gameweek_joiners.filter{|pg| pg.gameweek_id===id}
        puts pg_joiners
        puts 'after'
        render json: pg_joiners
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
