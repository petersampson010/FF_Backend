class RecordsController < ApplicationController
    def index 
        records = Record.all
        render json: records
    end 

    def create
        record = Record.create(record_params)
        render json: record
    end 

    def show
        record = Record.find(params[:id])
        render json: record
    end 

    def update
        record = Record.find(params[:id])
        record.update(record_params)
        render json: record
    end

    def destroy 
        record = Record.find(params[:id])
        record.delete
    end 

    def by_user_id
        records = Record.all
        records = records.filter{ |r| r.user_id == params[:user_id].to_i}
        render json: records
    end


    private 

    def record_params 
        params.require(:record).permit!
    end 

end
