class Train < ApplicationRecord
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
end
