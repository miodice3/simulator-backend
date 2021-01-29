class SchedulesController < ApplicationController

    def create
        schedule = Schedule.create(schedule_params)
    end

    def update

        schedule = Schedule.find_by(id: update_params[:id])

        if params[:left_right] == "slider-left" 
            schedule.time_on = update_params[:time_on]+":00"
            schedule.save
        elsif params[:left_right] == "slider-right" 
            schedule.time_off = update_params[:time_off]+":00"
            schedule.save
        end

        appliances = Appliance.all
        render json: ApplianceSerializer.new(appliances).to_serialized_json

    end

    def destroy
        schedule = Schedule.find_by_id(params[:id])
        schedule.destroy
    end

    private

    def schedule_params
        params.require(:schedule).permit(:appliance_id, :day, :time_on, :time_off)
    end

    def schedule_delete_params
        params.require(:schedule).permit(:appliance_id, :day, :time_on, :time_off)
    end

    def update_params
        params.require(:schedule).permit(:id, :time_on, :time_off, :left_right)
    end

end
