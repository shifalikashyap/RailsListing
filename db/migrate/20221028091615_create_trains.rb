class CreateTrains < ActiveRecord::Migration[7.0]
  def change
    create_table :trains do |t|
      t.string :name
      t.string :source_station
      t.string :last_station
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps
    end
  end
end
