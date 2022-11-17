class TrainStation < ApplicationRecord
  belongs_to :train
  belongs_to :station
  validates :day, :distance_in_km, :arrival_time, :departure_time, :total_halt_in_minutes, :station_id, :train_id, presence: true
  validates :distance_in_km, numericality: { only_integer: true }
end
