class CreateTrainStations < ActiveRecord::Migration[7.0]
  def change
    create_table :train_stations do |t|
      t.references :train, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.integer :day
      t.integer :distance_in_km
      t.datetime :arrival_time
      t.datetime :departure_time
      t.datetime :total_halt_in_minutes

      t.timestamps
    end
  end
end
