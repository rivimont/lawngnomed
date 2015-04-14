json.array!(@orders) do |order|
  json.extract! order, :id, :address, :name, :morning_of, :greeting
  json.url order_url(order, format: :json)
end
