class UsersController < ApplicationController
    include HelperModule
    skip_before_action :authenticate_request, only: [:create]

    def index
        users = User.all
        render json: find_from_params(users, user_params)
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            token = jwt_encode({user_id: @user.user_id})
            render json: {user: @user, token: token}
        else
            render json: @user.errors.full_messages
        end 
    end 

    def sign_in 
        @user = User.find_by_email(user_params[:email])
        if @user 
            if @user.authenticate(user_params[:password])
                render json: jwt_encode({user_id: @user.user_id})
            else 
                render json: {error: 'Incorrect Password'}
            end 
        else 
            render json: {error: 'Incorrect Email'}
        end 
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

    attr_accessor :password

    def user_params 
        params.permit(:user_id, :email, :team_name, :password, :password_confirmation, :transfers, :budget, :gw_start, :admin_user_id)
    end 

end
