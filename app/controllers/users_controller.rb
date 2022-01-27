class UsersController < ApplicationController
    include HelperModule
    skip_before_action :authenticate_request, only: [:create, :index, :sign_in]

    def index
        puts request.headers["Authorization"]
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
        puts 'signing user in'
        @user = User.find_by_email(user_params[:email])
        puts @user
        if @user 
            if @user.authenticate(user_params[:password])
                token = jwt_encode({user_id: @user.user_id})
                render json: {user: @user, token: token}
            else 
                render json: {errors: ['Incorrect Password']}
            end 
        else 
            render json: {errors: ['Incorrect Email']}
        end 
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else 
            render json: @user.errors.full_messages
        end 
    end

    def destroy 
        @user = User.find(params[:id])
        if @user.delete
        else
            render json: @user.errors.full_messages
        end 
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
