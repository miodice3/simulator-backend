class AppliancesController < ApplicationController

    def index
        appliances = Appliance.all
        render json: appliances, except: [:created_at, :updated_at] #, include: [:bird, :location]
    end
    
    def show
        appliance = Appliance.find_by(id: params[:id])
        render json: appliance, except: [:created_at, :updated_at]
    end

end
