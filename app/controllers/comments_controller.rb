class CommentsController < ApplicationController
  def create
    @gym = Gym.find(params[:gym_id])
    @comment = Comment.new(comment_params)
    @comment.gym = @gym
    @comment.user = User.find(rand(1..5)) # Should be current_user
    
    if @comment.save
      redirect_to gym_path(@gym)
    else
      redirect_to gym_path(@gym), alert: "Comment not added"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
