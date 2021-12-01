class UsersController < ApplicationController
    include HelperModule

    def index
        users = User.all
        render json: find_from_params(users, user_params)
    end 

    def create
        user = User.create(user_params)
        render json: user
    end 

    # def show
    #     user = User.find(params[:id])
    #     render json: user
    # end 

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy 
        user = User.find(params[:id])
        user.delete
    end 

    def total_points 
        user = User.find(params[:id])
        user_gameweek_joiners = user.user_gameweek_joiners
        total_points = user_gameweek_joiners.map{|ug| ug.total_points}.sum
        render json: total_points
    end

    private 

    def user_params 
        params.permit(:user_id, :email, :team_name, :password, :transfers, :budget, :gw_start, :admin_user_id)
    end 

end
