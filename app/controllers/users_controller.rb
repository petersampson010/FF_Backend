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

    # def pg_joiners
        
    #     # id = params[:gameweek_id].to_i
    #     # user = User.find(params[:id])
    #     # puts user
    #     # user_gameweeks = user.gameweeks
    #     # puts user_gameweeks
    #     # puts 'hi'
    #     # pgj_all = PlayerGameweekJoiner.all
    #     # puts pgj_all
    #     # pg_joiners = []
    #     # for i in user_gameweeks do 
    #     #     pgj = pgj_all.select{ |pgj| pgj.gameweek_id===i.gameweek_id}
    #     #     for j in pgj do 
    #     #         pg_joiners << j 
    #     #     end 
    #     # end 
    #     # # user.player_gameweek_joiners.filter{|pg| pg.gameweek_id===id}
    #     # render json: pg_joiners
    # end 

    def total_points 
        user = User.find(params[:id])
        user_gameweek_joiners = user.user_gameweek_joiners
        total_points = user_gameweek_joiners.map{|ug| ug.total_points}.sum
        render json: total_points
    end

    private 

    def user_params 
        params.permit(:user_id, :email, :teamname, :transfers, :budget, :admin_user_id)
    end 

end
