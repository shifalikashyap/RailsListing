class Train < ApplicationRecord
  has_many :train_stations
  has_many :stations, through: :train_stations
  paginates_per 10
  validates :name, :source_station, :last_station, :start_time, :end_time, presence: true
  validates :name, uniqueness: true
  validate :valid_time_range

  def valid_time_range
    return unless end_time? && start_time?
    # return unless end_time.present? && start_time.present?

    unless end_time.after?(start_time)
      errors.add(:start_time, "can not be greater than end time")
    end
  end

  def train_hours
    "#{((end_time.to_time - start_time.to_time)/1.hours).abs.round(2)} hours"
  end

  def train_duration
    "#{end_time.strftime("%H:%M %p")} to #{start_time.strftime("%H:%M %p")} (#{train_hours})"
  end
end
