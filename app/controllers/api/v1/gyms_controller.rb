class Api::V1::GymsController < Api::V1::BaseController
  before_action :set_gym,  only: [:show, :update]
  def index
    # @gyms = policy_scope(Gym)
    @gyms = Gym.all # Without Pundit
  end

  def show
  end

  def update
    @gym.update(gym_params)
    render :show
    # else
    #   render_error
    # end
  end
  

  private
  
  def set_gym
    @gym = Gym.find(params[:id])
    # authorize @gym # For Pundit
  end

  def gym_params
    params.require(:gym).permit(:name, :address)
  end

  def render_error
    render json: {errors: @gym.errors.full_messages },
      status: :unprocessable_entity
  end
end