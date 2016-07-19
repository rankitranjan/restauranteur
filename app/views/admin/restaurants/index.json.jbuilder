json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :title, :addess, :properties
  json.url restaurant_url(restaurant, format: :json)
end
