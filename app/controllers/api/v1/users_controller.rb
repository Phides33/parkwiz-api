module Api::V1
  class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end

    def show
      @user = User.find_by(device_id: find_params.to_h.symbolize_keys)
      render json: @user
    end

    private

    def find_params
      params.permit(:device_id)
    end
  end
end
