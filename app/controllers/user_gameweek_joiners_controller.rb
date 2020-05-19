class UserGameweekJoinersController < ApplicationController
    def index 
        user_gameweek_joiners = UserGameweekJoiner.all
        render json: user_gameweek_joiners
    end 

    def create
        user_gameweek_joiner = UserGameweekJoiner.create(params)
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
end
