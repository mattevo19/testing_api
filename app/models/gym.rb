class Gym < ApplicationRecord
  belongs_to :user
  has_many :comments

  # validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
end
