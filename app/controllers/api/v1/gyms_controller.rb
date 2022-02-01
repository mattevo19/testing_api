class Api::V1::GymsController < Api::V1::BaseController
  def index
    @gyms = policy_scope(Gym)
  end
end