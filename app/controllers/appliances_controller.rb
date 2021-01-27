class AppliancesController < ApplicationController

  def create
    appliance = Appliance.create(appliance_params)
      # byebug
    render json: ApplianceSerializer.new(appliance).to_serialized_json
  end

  def index
    appliances = Appliance.all
    render json: ApplianceSerializer.new(appliances).to_serialized_json
  end
  
  def show
    appliance = Appliance.find_by(id: params[:id])
    render json: ApplianceSerializer.new(appliance).to_serialized_json
  end

  private

  def appliance_params
    params.require(:appliance).permit(:name, :wattage)
  end

end