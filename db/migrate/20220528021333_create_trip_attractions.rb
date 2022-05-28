class CreateTripAttractions < ActiveRecord::Migration[6.1]
  def change
    create_table :attractions do |t|
      t.string :name
    end
  end
end
