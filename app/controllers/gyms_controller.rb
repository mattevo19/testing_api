class GymsController < ApplicationController
  before_action :gym_params, only: [:show]
  
  def index
    @gyms = Gym.all
    @bouldering = Gym.bouldering
    @none_bouldering = Gym.not_bouldering # Shows all none bouldering gyms
  end
  
  def show
    @comment = Comment.create 
  end

  private
  def gym_params
    @gym = Gym.find(params[:id])
  end
end
