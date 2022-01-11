class AdminUsersController < ApplicationController
    include HelperModule

    def index 
        admin_users = AdminUser.all
        render json: find_from_params(admin_users, admin_user_params)

    end 

    def create
        puts params[:token]
        obj = JWT.decode params[:token], 8f1d5aa63132ef5bb27e80d8b6ac3c486820f25770786d1204e4e92062395316195911730c42a418bdcef44ec8353009425d814e8615cb82c41d4873c9f989c8, 'HS256'
        puts obj
        # @admin_user = AdminUser.new(admin_user_params)
        # if @admin_user.save
        #     render json: @admin_user
        # else 
        #     render json: {"errors": @admin_user.errors.full_messages}, status: :bad_request
        # end
    end 

    # def show 
    #     admin_user = AdminUser.find(params[:id])
    #     render json: admin_user 
    # end 

    # def players
    #     admin_user = AdminUser.find(params[:id])
    #     players = admin_user.players
    #     render json: players
    # end 

    def destroy 
        admin_user = AdminUser.find(params[:id])
        admin_user.delete
        admin_users = AdminUser.all
        render json: admin_users
    end 

    # def club_game
    #     admin_user = AdminUser.find(params[:id])
    #     pg_joiners = admin_user.player_gameweek_joiners.filter{|pg| pg.gameweek_id===params[:gw_id]}
    #     render json: pg_joiners 
    # end 

    def league 
        admin_user = AdminUser.find(params[:id])
        users = admin_user.users
        user_gameweek_joiners = UserGameweekJoiner.all
        return_array = []
        users.each do |u|
            ug_joiners = u.user_gameweek_joiners
            total_points = 0
            ug_joiners.each do |ug|
                total_points = total_points + ug.total_points
            end 
            if ug_joiners.length()>0
                return_array << {
                    user_id: u.user_id,
                    team_name: u.team_name,
                    total_points: total_points,
                    gw_points: ug_joiners[-1].total_points
                }
            else 
                return_array << {
                    user_id: u.user_id,
                    team_name: u.team_name,
                    total_points: 0,
                    gw_points: 0
                }
            end 
        end
        render json: return_array
    end 

    # def ug_joiners
    #     admin_user = AdminUser.find(params[:id])
    #     user_gameweek_joiners = admin_user.user_gameweek_joiners.filter{|ug| ug.gameweek_id===params[:gw_id].to_i}
    #     render json: user_gameweek_joiners
    # end 


    private 

    def admin_user_params 
        params.permit(:email, :password, :password_confirmation, :club_name)
    end 



end