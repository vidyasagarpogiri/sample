json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :brand, :price
  json.url shoe_url(shoe, format: :json)
end
