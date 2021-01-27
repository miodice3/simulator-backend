class SchedulesController < ApplicationController

    def create
        schedule = Schedule.create(schedule_params)

    end

    private

    def schedule_params
        params.require(:schedule).permit(:appliance_id, :day, :time_on, :time_off)
    end

end
