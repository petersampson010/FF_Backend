class PlayerGameweekJoinersController < ApplicationController

    def index 
        player_gameweeks = PlayerGameweekJoiner.all
        render json: player_gameweeks
    end 

    def create
        player_gameweek_joiner = PlayerGameweekJoiner.create(player_gameweek_joiner_params)
        # player = player_gameweek.player
        # users = player.users
        # minutes, assists, goals, own_goals, y_cards, r_cards, bonus, penalty_miss, goals_conceded = par.values_at(:minutes, :assists, :goals, :own_goals, :y_cards, :r_cards, :bonus, :penalty_miss, :goals_conceded)
        # if player.position===4
        #     score = (minutes.to_i)/30.floor() + (assists.to_i)*3 + (goals.to_i)*4 + (own_goals.to_i)*-3 + (y_cards.to_i)*-1 + (r_cards.to_i)*-3 + (bonus.to_i) + (penalty_miss.to_i)*-3
        # elsif player.position===3
        #     score = (minutes.to_i)/30.floor() + (assists.to_i)*3 + (goals.to_i)*5 + (own_goals.to_i)*-3 + (y_cards.to_i)*-1 + (r_cards.to_i)*-3 + (bonus.to_i) + (penalty_miss.to_i)*-3
        # else
        #     if goals_conceded===0 || goals_conceded===""
        #         score = (minutes.to_i)/30.floor() + (assists.to_i)*3 + (goals.to_i)*5 + (own_goals.to_i)*-3 + (y_cards.to_i)*-1 + (r_cards.to_i)*-3 + (bonus.to_i) + (penalty_miss.to_i)*-3 + 5
        #     else
        #         score = (minutes.to_i)/30.floor() + (assists.to_i)*3 + (goals.to_i)*5 + (own_goals.to_i)*-3 + (y_cards.to_i)*-1 + (r_cards.to_i)*-3 + (bonus.to_i) + (penalty_miss.to_i)*-3 + (goals_conceded.to_i)*-0.5.floor()
        #     end
        # end
        render json: player_gameweek_joiner
    end 

    def update
        player_gameweek_joiner  = PlayerGameweekJoiner.find(params[:id])
        player_gameweek_joiner.update(player_gameweek_joiner_params)
        render json: player_gameweek_joiner
    end 

    def show
        player_gameweek = PlayerGameweekJoiner.find(params[:id])
        render json: player_gameweek
    end 

    def destroy 
        player_gameweek = PlayerGameweekJoiner.find(params[:id])
        player_gameweek.delete
    end 

    private

    def player_gameweek_joiner_params
        params.require(:player_gameweek_joiner).permit!
    end 
end
