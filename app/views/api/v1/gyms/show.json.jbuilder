json.extract! @gym, :id, :name, :address, :created_at
json.comments @gym.comments do |comment|
  json.extract! comment, :id, :content, :created_at
  json.created_by do
    # json.id comment.user.id
    json.email comment.user.email
  end
end