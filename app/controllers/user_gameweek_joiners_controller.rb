class UserGameweekJoinersController < ApplicationController
include HelperModule  

    def index
        ug_joiners = UserGameweekJoiner.all
        render json: find_from_params(ug_joiners, ug_joiner_params)
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

    # def show
    #     user_gameweek_joiner = UserGameweekJoiner.find(params[:id])
    #     render json: user_gameweek_joiner
    # end 

    def destroy 
        user_gameweek_joiner = UserGameweekJoiner.find(params[:id])
        user_gameweek_joiner.delete
    end 

    # def user
    #     user_gameweek_joiners = UserGameweekJoiner.all
    #     user_gameweek_joiners = user_gameweek_joiners.filter{|ug| ug.gameweek_id===params[:gw_id].to_i && ug.user_id===params[:id].to_i}
    #     render json: user_gameweek_joiners[0]
    # end 

    private 

    def ug_joiner_params
        params.permit(:ug_id, :total_points, :user_id, :gameweek_id)
    end

end
