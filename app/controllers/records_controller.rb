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

    def update
        record = Record.find(params[:id])
        record.update(record_params)
        render json: record
    end

    def custom_update
        records = Record.all
        record = find_from_params(records, request.GET)[0]
        record.update(record_params)
        render json: record
    end

    def destroy
        record = Record.find(params[:id])
        record.delete
    end 


    private 

    def record_params 
        params.permit(:record_id, :sub, :captain, :vice_captain, :user_id, :player_id, :gameweek_id, :admin_user_id)
    end 

end
