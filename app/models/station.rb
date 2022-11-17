class Station < ApplicationRecord
  has_many :train_stations
  has_many :trains, through: :train_stations
  validates :name, :code, :state, :longitude, :latitude, presence: true
  validates :name, :code, uniqueness: true  
  validates :longitude, :latitude, numericality: true
end
