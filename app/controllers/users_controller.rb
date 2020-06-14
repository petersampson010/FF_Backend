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
        # player_user_joiners.select{|z| z.player_id===x.player_id
        user = User.find(params[:id])
        players = Player.all
        player_user_joiners_all = PlayerUserJoiner.all
        player_user_joiners = player_user_joiners_all.filter{|x| x.user_id===user.user_id}
        player_user_joiner_player_ids = player_user_joiners.map{|x| x.player_id}
        user_players = players.select{|x| player_user_joiner_player_ids.include?(x.player_id)}
        render json: user_players
    end 

    def destroy 
        user = User.find(params[:id])
        user.delete
    end 

    private 

    def user_params 
        params.require(:user).permit!
    end 

end
