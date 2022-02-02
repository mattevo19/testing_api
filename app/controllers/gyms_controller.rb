class GymsController < ApplicationController
  before_action :gym_params, only: [:show]
  
  def index
    @gyms = Gym.all
  end
  
  def show
  end

  private
  def gym_params
    @gym = Gym.find(params[:id])
  end
end
