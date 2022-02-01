class Comment < ApplicationRecord
  belongs_to :gym
  belongs_to :user
end
