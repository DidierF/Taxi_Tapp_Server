json.array!(@user_taxi_calls) do |user_taxi_call|
  json.extract! user_taxi_call, :id
  json.url user_taxi_call_url(user_taxi_call, format: :json)
end
