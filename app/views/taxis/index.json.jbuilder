json.array!(@taxis) do |taxi|
  json.extract! taxi, :id, :name, :latitude, :longitude
  json.url taxi_url(taxi, format: :json)
end
