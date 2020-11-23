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

    def team_start
        user = User.find(params[:id])
        players = Player.all 
        player_user_joiners = PlayerUserJoiner.all.filter{|x| x.user_id===user.user_id && x.sub===false}
        player_user_joiner_player_ids = player_user_joiners.map{|x| x.player_id}
        user_players = players.select{|x| player_user_joiner_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def team_sub 
        user = User.find(params[:id])
        players = Player.all 
        player_user_joiners = PlayerUserJoiner.all.filter{|x| x.user_id===user.user_id && x.sub===true}
        player_user_joiner_player_ids = player_user_joiners.map{|x| x.player_id}
        user_players = players.select{|x| player_user_joiner_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    # def players 
    #     user = User.find(params[:id])



    private 

    def user_params 
        params.require(:user).permit!
    end 

end
