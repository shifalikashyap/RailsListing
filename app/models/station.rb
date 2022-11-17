class Station < ApplicationRecord
  validates :name, :code, :state, :longitude, :latitude, presence: true
  validates :name, :code, uniqueness: true
end
