class RecordsController < ApplicationController
include HelperModule

    def index 
        records = Record.all
        render json: find_from_params(records, record_params)
    end 

    def create
        record = Record.create(record_params)
        render json: record
    end 

    # def show
    #     record = Record.find(params[:id])
    #     render json: record
    # end 

    def update
        record = Record.find(params[:id])
        record.update(record_params)
        render json: record
    end

    def destroy 
        record = Record.find(params[:id])
        record.delete
    end 

    # def by_user_id
    #     records = Record.all
    #     records = records.filter{ |r| r.user_id == params[:user_id].to_i}
    #     render json: records
    # end


    private 

    def record_params 
        params.permit(:record_id, :sub, :captain, :vice_captain, :user_id, :player_id, :gameweek_id)
    end 

end
