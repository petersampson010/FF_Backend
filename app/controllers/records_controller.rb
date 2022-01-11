class RecordsController < ApplicationController
include HelperModule

    def index 
        records = Record.all
        render json: find_from_params(records, record_params)
    end 

    def create
        @record = Record.new(record_params)
        if @record.save
            render json: @record
        else 
            render json: {"errors": @record.errors.full_messages}, status: :bad_request
        end
    end 

    def update
        record = Record.find(params[:id])
        record.update(record_params)
        render json: record
    end

    def custom_update
        records = Record.all
        puts request.GET
        record = find_from_params(records, request.GET)[0]
        puts record.player_id 
        puts request.POST.except!("record")
        record.update(request.POST.except!("record"))
        puts record
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

    def patch_body_params
        request.POST.permit(:record_id, :sub, :captain, :vice_captain, :user_id, :player_id, :gameweek_id, :admin_user_id)
    end

end