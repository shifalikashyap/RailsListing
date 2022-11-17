class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :code
      t.string :name
      t.string :state
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
