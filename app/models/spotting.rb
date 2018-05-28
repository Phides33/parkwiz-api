class Spotting < ApplicationRecord
  belongs_to :user

  scope :by_longitude, -> (min, max) { min && max ? where('lng >= :min AND lng <= :max', min: min, max: max) : all }
  scope :by_latitude, -> (min, max) { min && max ? where('lat >= :min AND lat <= :max', min: min, max: max) : all }

  API_RESULTS_LIMIT = 10

  def self.search(min_lat:, max_lat:, min_lng:, max_lng:)
    by_latitude(min_lat, max_lat).
      by_longitude(min_lng, max_lng).
      limit(API_RESULTS_LIMIT)
  end
end
