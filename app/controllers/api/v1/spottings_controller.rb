module Api::V1
  class SpottingsController < ApplicationController
    def index
      @spottings = Spotting.search(search_params.to_h.symbolize_keys)
      render json: @spottings
    end

    private

    def search_params
      params.permit(:min_lng, :max_lng, :min_lat, :max_lat)
    end
  end
end
