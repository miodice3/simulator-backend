class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :appliance_id
      t.string :day
      t.string :time_on
      t.string :time_off
      t.integer :set_point

      t.timestamps
    end
  end
end
