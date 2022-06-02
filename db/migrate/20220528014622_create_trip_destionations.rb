class CreateTripDestionations < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_destinations do |t|
      t.string :name
      t.string :country
      t.string :continent

      t.timestamps 
    end
  end
end
