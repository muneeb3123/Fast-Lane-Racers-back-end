class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: {
      user: current_user, status: :ok
    }
  end
end