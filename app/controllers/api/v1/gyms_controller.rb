class Api::V1::GymsController < Api::V1::BaseController
  # acts_as_token_authentication_handler_for User, except: [ :index, :show ] doesnt work because of outdated gem 'simple_token_authentication'
  before_action :set_gym,  only: [:show, :update, :destroy]

  def index
    # @gyms = policy_scope(Gym)
    @gyms = Gym.all # Without Pundit
  end

  def show
  end

  def update
    if @gym.update(gym_params)
      render :show
    else
      render_error
    end
  end
  
  def create
    @gym = Gym.new(gym_params)
    # @gym.user = current_user
    # authorize @gym # For Pundit
    if @gym.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @gym.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private
  
  def set_gym
    @gym = Gym.find(params[:id])
    # authorize @gym # For Pundit
  end

  def gym_params
    params.require(:gym).permit(:name, :address, :user_id)
  end

  def render_error
    render json: {errors: @gym.errors.full_messages },
      status: :unprocessable_entity
  end
end