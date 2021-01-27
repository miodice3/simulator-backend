class SchedulesController < ApplicationController

    def create
        schedule = Schedule.create(schedule_params)

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

end
