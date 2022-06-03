class CreateDestinations < ActiveRecord::Migration[6.1]
  def change
    create_table :destinations do |t|
      t.string :name
      t.string :country
      t.string :continent

      t.timestamps 
    end
  end
end
