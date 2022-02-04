json.array! @gyms do |gym|
  json.extract! gym, :id, :name, :address, :style
end