class AppliancesController < ApplicationController

    def index
        appliances = Appliance.all
        render json: ApplianceSerializer.new(appliances).to_serialized_json
      end
    
    def show
        appliance = Appliance.find_by(id: params[:id])
        # render json: appliance, except: [:created_at, :updated_at]
        render json: ApplianceSerializer.new(appliance).to_serialized_json
      end

end