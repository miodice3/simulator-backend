class CreateAppliances < ActiveRecord::Migration[6.0]
  def change
    create_table :appliances do |t|
      t.string :name
      t.string :status
      t.string :url_on
      t.string :url_off

      t.timestamps
    end
  end
end
