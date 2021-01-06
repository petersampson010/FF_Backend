class UserGameweekJoinersController < ApplicationController
    def index 
        user_gameweek_joiners = UserGameweekJoiner.all
        render json: user_gameweek_joiners
    end 

    def create
        user_gameweek_joiner = UserGameweekJoiner.create(user_gameweek_joiner_params)
        render json: user_gameweek_joiner
    end 

    def update
        user_gameweek_joiner = UserGameweekJoiner.find(params[:id])
        user_gameweek_joiner.update(user_gameweek_joiner_params)
        render json: user_gameweek_joiner
    end 

    def show
        user_gameweek_joiner = UserGameweekJoiner.find(params[:id])
        render json: user_gameweek_joiner
    end 

    def destroy 
        user_gameweek_joiner = UserGameweekJoiner.find(params[:id])
        user_gameweek_joiner.delete
    end 

    def user
        user_gameweek_joiners = UserGameweekJoiner.all
        user_gameweek_joiners = user_gameweek_joiners.filter{|ug| ug.gameweek_id===params[:gw_id].to_i && ug.user_id===params[:id].to_i}
        render json: user_gameweek_joiners[0]
    end 

    private 

    def user_gameweek_joiner_params
        params.require(:user_gameweek_joiner).permit!
    end

end
