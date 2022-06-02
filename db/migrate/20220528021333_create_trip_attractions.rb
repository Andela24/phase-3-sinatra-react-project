class CreateTripAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_attractions do |t|
      t.string :name

      t.text :description
      t.boolean :pet_friendly, default: true
      t.integer :trip_destination_id 
      # foreign key matches file name
    end
  end
end
