class AddWattageToAppliances < ActiveRecord::Migration[6.0]
  def change
    add_column :appliances, :wattage, :integer
  end
end
